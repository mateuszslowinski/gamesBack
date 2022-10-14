import {ForbiddenException, Injectable} from '@nestjs/common';
import {CreatePlatformDto} from './dto/create-platform.dto';
import {PrismaService} from "../prisma/prisma.service";
import {GameType, PlatformType} from "../types";
import {UpdatePlatformDto} from "./dto/update-platform.dto";

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
        return await this.prisma.platform.findMany();
    }

    async findPlatformById(id: string): Promise<PlatformType> {
        return await this.prisma.platform.findUnique({
            where: {
                id,
            },
        });
    }

    async findGamesOnPlatformByPlatformId(id: string):Promise<GameType[]> {
        return await this.prisma.game.findMany({
            where: {
                platforms: {
                    some: {
                        platformId: id
                    }
                }
            }
        })
    }

    async updatePlatformById(id: string, dto: UpdatePlatformDto): Promise<PlatformType> {
        try {
            return await this.prisma.platform.update({
                where: {
                    id
                }, data: {
                    ...dto,
                },
            })
        } catch (e) {
            throw e;
        }
    }

    async removePlatform(id: string): Promise<{ message: string }> {
        const platform = await this.prisma.platform.findUnique({
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
