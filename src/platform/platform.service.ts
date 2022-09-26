import {Injectable} from '@nestjs/common';
import {CreatePlatformDto} from './dto/create-platform.dto';
import {PrismaService} from "../prisma/prisma.service";

@Injectable()
export class PlatformService {
    constructor(private prisma: PrismaService) {
    }

    async createPlatform(dto: CreatePlatformDto) {
        return await this.prisma.platform.create({
            data: {
                ...dto,
            }
        });
    }

    async findAllPlatforms() {
        return `This action returns all platform`;
    }

    async findPlatformById(id: string) {
        return `This action returns a #${id} platform`;
    }

    async removePlatform(id: string) {
        return `This action removes a #${id} platform`;
    }
}
