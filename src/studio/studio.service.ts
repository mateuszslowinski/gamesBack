import {ForbiddenException, Injectable} from '@nestjs/common';
import {UpdateStudioDto} from './dto/update-studio.dto';
import {PrismaService} from "../prisma/prisma.service";
import {CreateStudioDto} from "./dto/create-studio.dto";

@Injectable()
export class StudioService {
    constructor(private prisma: PrismaService) {
    }

    async createStudio(
        dto: CreateStudioDto,
    ) {
        return await this.prisma.studio.create({
            data: {
                name: dto.name,
                country: dto.country,
                founded: dto.founded,
                employees: dto.employees,
                owner: {
                    connect: {id: dto.ownerId}
                },
            },
        })
    }


    async findAll() {
        return await this.prisma.studio.findMany();
    }

    async findOneById(id: string) {
        return await this.prisma.studio.findUnique({
            where: {
                id
            }
        });
    }

    async update(id: string, dto: UpdateStudioDto) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            }
        })

        if (!studio) {
            throw new ForbiddenException('Brak studia')
        }

        return this.prisma.studio.update({
            where: {
                id
            },
            data: {
                ...dto,
            },
        });
    }

    async remove(id: string) {
        const studio = await this.prisma.studio.findUnique({
            where: {
                id,
            }
        });

        if (!studio) {
            throw new ForbiddenException('Brak studia');
        }

        await this.prisma.studio.delete({
            where: {
                id,
            },
        });
        return {message: "Studio zostało usunięte"}
    }
}
