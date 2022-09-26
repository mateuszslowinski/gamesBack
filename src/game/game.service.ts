import {Injectable} from '@nestjs/common';
import {CreateGameDto} from './dto/create-game.dto';
import {UpdateGameDto} from './dto/update-game.dto';
import {PrismaService} from "../prisma/prisma.service";

@Injectable()
export class GameService {
    constructor(private prisma: PrismaService) {}

    async createGame(
        dto: CreateGameDto,
        file: Express.Multer.File) {
        return  await this.prisma.game.create({
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

    findAllGames() {
        return `This action returns all game`;
    }

    findGameById(id: string) {
        return `This action returns a #${id} game`;
    }

    updateGameById(id: string, dto: UpdateGameDto) {
        return `This action updates a #${id} game`;
    }

    removeGameById(id: string) {
        return `This action removes a #${id} game`;
    }
}
