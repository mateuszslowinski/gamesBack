import {BadRequestException, ForbiddenException, Injectable} from '@nestjs/common';
import * as path from "path";
import * as fs from "fs";
import {PrismaService} from "../prisma/prisma.service";
import {MulterDiskUploadedFiles} from "../types/files/files";
import {storageDir} from "../utils/storage";
import {CreateGameDto} from './dto/create-game.dto';
import {UpdateGameDto} from './dto/update-game.dto';
import {GameType} from "../types";

@Injectable()
export class GameService {
    constructor(private prisma: PrismaService) {
    }

    async createGame(
        dto: CreateGameDto,
        files: MulterDiskUploadedFiles,): Promise<GameType> {

        const photo = files?.image?.[0] ?? null;
        if (!photo) throw new BadRequestException();

        try {
            return await this.prisma.game.create({
                data: {
                    name: dto.name,
                    description: dto.description,
                    image: photo.filename,
                    releaseDate: new Date(dto.releaseDate),
                    develeopers: {
                        connect: {id: dto.developerId}
                    },
                },
            });
        } catch (e) {
            try {
                if (photo) {
                    fs.unlinkSync(
                        path.join(storageDir(), 'games-photos', photo.filename)
                    );
                }
            } catch (e2) {
            }
            throw e;
        }
    }

    async findAllGames(): Promise<GameType[]> {
        return await this.prisma.game.findMany();
    }

    async findGameById(id: string): Promise<GameType> {
        return await this.prisma.game.findUnique({
            where: {
                id,
            },
        });
    }

    async updateGameById(
        id: string,
        dto: UpdateGameDto,
        files: MulterDiskUploadedFiles
    ): Promise<GameType> {
        const game = await this.prisma.game.findUnique({
            where: {
                id,
            },
        });
        const photo = files?.image?.[0] ?? null;
        if (!photo) throw new BadRequestException();

        if (!game) throw new BadRequestException();
        try {
            if (photo) {
                fs.unlinkSync(
                    path.join(storageDir(), 'games-photos', game.image)
                );
            }
            return this.prisma.game.update({
                where: {
                    id
                },
                data: {
                    ...dto,
                    image: photo.filename,
                    releaseDate: new Date(dto.releaseDate)
                },
            });
        } catch (e) {
            try {
                if (photo) {
                    fs.unlinkSync(
                        path.join(storageDir(), 'games-photos', photo.filename)
                    );
                }
            } catch (e2) {
            }
            throw e;
        }
    }

    async removeGameById(id: string): Promise<{ message: string }> {
        const game = await this.prisma.game.findUnique({
            where: {
                id,
            },
        });
        if (!game) {
            throw new ForbiddenException('Brak wybranej gry');
        }
        try {
            fs.unlinkSync(
                path.join(storageDir(), 'games-photos', game.image)
            );
            await this.prisma.game.delete({
                where: {
                    id,
                },
            });
            return {message: "Gra została usunięta"}
        } catch (e) {
            throw  e
        }
    }

    async getGamePhoto(id: string, res: any) {
        try {
            const game = await this.prisma.game.findUnique({
                where: {
                    id
                }
            });
            if (!game || !game.image) throw new BadRequestException();
            res.sendFile(
                game.image,
                {
                    root: path.join(storageDir(), 'games-photos'),
                },
            );
        } catch (e) {
            res.json({
                error: e.message,
            });
        }
    }

    async getGamesByStudio(id: string): Promise<GameType[]> {
        return await this.prisma.game.findMany({
            where: {
                developerId: id,
            },
        });
    }
}
