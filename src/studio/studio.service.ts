import {BadRequestException, Injectable} from '@nestjs/common';
import * as fs from 'fs';
import * as path from 'path';
import {PrismaService} from "../prisma/prisma.service";
import {MulterDiskUploadedFiles} from 'src/types/files/files';
import {storageDir} from "../utils/storage";
import {CreateStudioDto} from "./dto/create-studio.dto";
import {UpdateStudioDto} from './dto/update-studio.dto';

@Injectable()
export class StudioService {
    constructor(private prisma: PrismaService) {
    }

    async createStudio(
        dto: CreateStudioDto,
        files: MulterDiskUploadedFiles,
    ) {
        const photo = files?.image?.[0] ?? null;
        if (!photo) throw new BadRequestException();

        try {
            return await this.prisma.studio.create({
                data: {
                    name: dto.name,
                    country: dto.country,
                    founded: dto.founded,
                    employees: Number(dto.employees),
                    image: photo.filename,
                    description: dto.description,
                    owner: {
                        connect: {id: dto.ownerId}
                    },
                },
            });
        } catch (e) {
            try {
                if (photo) {
                    fs.unlinkSync(
                        path.join(storageDir(), 'studios-photos', photo.filename)
                    );
                }
            } catch (e2) {
            }
            throw e;
        }
    }

    async findAllStudios() {
        return await this.prisma.studio.findMany();
    }

    async findStudioByName(name: string) {
        return await this.prisma.studio.findUnique({
            where: {
               name
            }
        });
    }

    async updateStudioById(id: string,
                           dto: UpdateStudioDto,
                           files: MulterDiskUploadedFiles) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            },
        });
        const photo = files?.image?.[0] ?? null;
        if (!photo) throw new BadRequestException();
        if (!studio) throw new BadRequestException();

        try {
            if (photo) {
                fs.unlinkSync(
                    path.join(storageDir(), 'studios-photos', studio.image)
                );
            }
            return this.prisma.studio.update({
                where: {
                    id
                },
                data: {
                    ...dto,
                    image: photo.filename
                },
            });
        } catch (e) {
            try {
                if (photo) {
                    fs.unlinkSync(
                        path.join(storageDir(), 'studios-photos', photo.filename)
                    );
                }
            } catch (e2) {
            }
            throw e;
        }
    }

    async removeStudioById(id: string) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            },
        });

        if (!studio) throw new BadRequestException();
        try {
            fs.unlinkSync(
                path.join(storageDir(), 'studios-photos', studio.image)
            );
            await this.prisma.studio.delete({
                where: {
                    id,
                },
            });
            return {message: "Studio zostało usunięte"}
        } catch (e) {
            throw e
        }

    }

    async getPhoto(id: string, res: any) {
        try {
            const studio = await this.prisma.studio.findUnique({
                where: {
                    id
                }
            });

            if (!studio || !studio.image) throw new BadRequestException();

            res.sendFile(
                studio.image,
                {
                    root: path.join(storageDir(), 'studios-photos'),
                },
            );

        } catch (e) {
            res.json({
                error: e.message,
            });
        }
    }

}
