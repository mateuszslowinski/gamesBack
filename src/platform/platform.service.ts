import {ForbiddenException, Injectable} from '@nestjs/common';
import {CreatePlatformDto} from './dto/create-platform.dto';
import {PrismaService} from "../prisma/prisma.service";
import {PlatformType} from "../types";

@Injectable()
export class PlatformService {
    constructor(private prisma: PrismaService) {}

    async createPlatform(dto: CreatePlatformDto): Promise<PlatformType> {
        return await this.prisma.platform.create({
            data: {
                ...dto,
            },
        });
    }

    async findAllPlatforms(): Promise<PlatformType[]> {
        return this.prisma.platform.findMany();
    }

    async findPlatformById(id: string): Promise<PlatformType> {
        return this.prisma.platform.findUnique({
            where: {
                id,
            },
        });
    }

    async removePlatform(id: string): Promise<{ message: string }> {
        const platform = this.prisma.platform.findUnique({
            where: {
                id,
            }
        })

        if (!platform) {
            throw new ForbiddenException('Brak platformy');
        }

        await this.prisma.platform.delete({
            where: {
                id,
            },
        });
        return {message: "Platforma została usunięta"}
    }
}
