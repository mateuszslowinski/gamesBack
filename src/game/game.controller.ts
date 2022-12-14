import {
    Controller,
    Get,
    Post,
    Body,
    Patch,
    Param,
    Delete,
    UseGuards,
    HttpCode,
    HttpStatus, UseInterceptors, UploadedFiles, Res
} from '@nestjs/common';
import {GameService} from './game.service';
import {CreateGameDto} from './dto/create-game.dto';
import {UpdateGameDto} from './dto/update-game.dto';
import {JwtGuard} from "../guards/jwt.guard";
import {FileFieldsInterceptor} from "@nestjs/platform-express";
import {multerStorage, storageDir} from "../utils/storage";
import * as path from "path";
import {MulterDiskUploadedFiles} from "../types/files/files";

@Controller('game')
export class GameController {
    constructor(private readonly gameService: GameService) {
    }

    @UseGuards(JwtGuard)
    @Post()
    @UseInterceptors(
        FileFieldsInterceptor([{name: 'image', maxCount: 1},],
            {storage: multerStorage(path.join(storageDir(), 'games-photos'))},
        )
    )
    createGame(
        @Body() dto: CreateGameDto,
        @UploadedFiles() file: MulterDiskUploadedFiles) {
        return this.gameService.createGame(dto, file);
    }

    @Get()
    @HttpCode(HttpStatus.OK)
    findAllGames() {
        return this.gameService.findAllGames();
    }

    @Get(':name')
    @HttpCode(HttpStatus.OK)
    findGameByName(@Param('name') name: string) {
        return this.gameService.findGameByName(name);
    }


    @UseGuards(JwtGuard)
    @Patch(':name')
    @UseInterceptors(
        FileFieldsInterceptor([{name: 'image', maxCount: 1},],
            {storage: multerStorage(path.join(storageDir(), 'games-photos'))},
        )
    )
    @HttpCode(HttpStatus.OK)
    updateGameByName(
        @Param('name') name: string,
        @Body() dto: UpdateGameDto,
        @UploadedFiles() files: MulterDiskUploadedFiles) {
        return this.gameService.updateGameByName(name, dto, files);
    }

    @UseGuards(JwtGuard)
    @Delete(':id')
    @HttpCode(HttpStatus.OK)
    removeGameById(@Param('id') id: string) {
        return this.gameService.removeGameById(id);
    }

    @Get('/photo/:id')
    @HttpCode(HttpStatus.OK)
    async getGamePhoto(
        @Param('id') id: string,
        @Res() res: any,
    ): Promise<any> {
        return this.gameService.getGamePhoto(id, res);
    }

    @Get('/release/close')
    @HttpCode(HttpStatus.OK)
    findClosestReleaseGame() {
        return this.gameService.findClosestReleaseGame();
    }

    @Get('/:name/studio')
    @HttpCode(HttpStatus.OK)
    getGamesByStudio(@Param('name') name: string) {
        return this.gameService.getGamesByStudio(name);
    }

    @Get('/search/:term')
    @HttpCode(HttpStatus.OK)
    getGamesBySearch(@Param('term') term:string ) {
        return this.gameService.getGamesBySearch(term);
    }
}
