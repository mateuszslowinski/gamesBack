import {BadRequestException, Injectable} from '@nestjs/common';
import * as fs from 'fs';
import {UpdateStudioDto} from './dto/update-studio.dto';
import {PrismaService} from "../prisma/prisma.service";
import {CreateStudioDto} from "./dto/create-studio.dto";
import {MulterDiskUploadedFiles} from 'src/types/files/files';
import {storageDir} from "../utils/storage";
import * as path from 'path';

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

    async findStudioById(id: string) {
        return await this.prisma.studio.findUnique({
            where: {
                id
            }
        });
    }

    async updateStudioById(id: string,
                           dto: UpdateStudioDto,
                           ) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            },
        });

        if (!studio) throw new BadRequestException();

          return this.prisma.studio.update({
              where: {
                  id
              },
              data: {
                  ...dto,
              },
          });

    }

    async removeStudioById(id: string) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            },
        });

        if (!studio) throw new BadRequestException();

        await this.prisma.studio.delete({
            where: {
                id,
            },
        });
        return {message: "Studio zostało usunięte"}
    }

}
