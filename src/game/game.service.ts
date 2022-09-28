import {ForbiddenException, Injectable} from '@nestjs/common';
import {CreateGameDto} from './dto/create-game.dto';
import {UpdateGameDto} from './dto/update-game.dto';
import {PrismaService} from "../prisma/prisma.service";
import {GameType} from "../types";

@Injectable()
export class GameService {
    constructor(private prisma: PrismaService) {}

    async createGame(
        dto: CreateGameDto,
        file: Express.Multer.File): Promise<GameType> {
        return await this.prisma.game.create({
            data: {
                name: dto.name,
                description: dto.description,
                image: dto.image,
                releaseDate: new Date(dto.releaseDate),
                develeopers: {
                    connect: {id: dto.developerId}
                },
            },
        });
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

    async updateGameById(id: string, dto: UpdateGameDto): Promise<GameType> {
        const game = await this.prisma.game.findUnique({
            where: {
                id,
            },
        });

        if (!game) {
            throw new ForbiddenException('Brak wybranej gry')
        }

        return this.prisma.game.update({
            where: {
                id
            },
            data: {
                ...dto,
                releaseDate: new Date(dto.releaseDate)
            },
        });
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

        await this.prisma.game.delete({
            where: {
                id,
            },
        });
        return {message: "Gra została usunięta"}
    }
}
