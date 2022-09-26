import {Injectable} from '@nestjs/common';
import {CreateGameDto} from './dto/create-game.dto';
import {UpdateGameDto} from './dto/update-game.dto';
import {PrismaService} from "../prisma/prisma.service";

@Injectable()
export class GameService {
    constructor(private prisma: PrismaService) {
    }

    async createGame(
        dto: CreateGameDto,
        file: Express.Multer.File) {
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

    async findAllGames() {
        return await this.prisma.game.findMany();
    }

    async findGameById(id: string) {
        return await this.prisma.game.findUnique({
            where: {
                id,
            },
        });
    }

    updateGameById(id: string, dto: UpdateGameDto) {
        return `This action updates a #${id} game`;
    }

    removeGameById(id: string) {
        return `This action removes a #${id} game`;
    }
}
