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
import { GameService } from './game.service';
import { CreateGameDto } from './dto/create-game.dto';
import { UpdateGameDto } from './dto/update-game.dto';
import {JwtGuard} from "../guards/jwt.guard";
import {FileFieldsInterceptor} from "@nestjs/platform-express";
import {multerStorage, storageDir} from "../utils/storage";
import * as path from "path";
import {MulterDiskUploadedFiles} from "../types/files/files";

@Controller('game')
export class GameController {
  constructor(private readonly gameService: GameService) {}

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
    return this.gameService.createGame(dto,file);
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  findAllGames() {
    return this.gameService.findAllGames();
  }

  @Get(':id')
  @HttpCode(HttpStatus.OK)
  findGameById(@Param('id') id: string) {
    return this.gameService.findGameById(id);
  }

  @UseGuards(JwtGuard)
  @Patch(':id')
  @HttpCode(HttpStatus.OK)
  updateGameById(@Param('id') id: string, @Body() dto: UpdateGameDto) {
    return this.gameService.updateGameById(id, dto);
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


}
