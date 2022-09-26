import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UploadedFile,
  UseGuards,
  HttpCode,
  HttpStatus
} from '@nestjs/common';
import { GameService } from './game.service';
import { CreateGameDto } from './dto/create-game.dto';
import { UpdateGameDto } from './dto/update-game.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('game')
export class GameController {
  constructor(private readonly gameService: GameService) {}

  @UseGuards(JwtGuard)
  @Post()
  @HttpCode(HttpStatus.CREATED)
  createGame(
      @Body() dto: CreateGameDto,
      @UploadedFile() file: Express.Multer.File,
  ) {
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
}
