import {ForbiddenException, Injectable} from '@nestjs/common';
import {CreatePlatformDto} from './dto/create-platform.dto';
import {PrismaService} from "../prisma/prisma.service";

@Injectable()
export class PlatformService {
    constructor(private prisma: PrismaService) {}

    async createPlatform(dto: CreatePlatformDto) {
        return await this.prisma.platform.create({
            data: {
                ...dto,
            },
        });
    }

    async findAllPlatforms() {
        return this.prisma.platform.findMany();
    }

    async findPlatformById(id: string) {
        return this.prisma.platform.findUnique({
            where: {
                id,
            },
        });
    }

    async removePlatform(id: string) {
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
