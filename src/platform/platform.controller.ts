import {Controller, Get, Post, Body, Param, Delete, HttpCode, HttpStatus, UseGuards} from '@nestjs/common';
import { PlatformService } from './platform.service';
import { CreatePlatformDto } from './dto/create-platform.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('platform')
export class PlatformController {
  constructor(private readonly platformService: PlatformService) {}

  @UseGuards(JwtGuard)
  @Post()
  @HttpCode(HttpStatus.CREATED)
  createPlatform(@Body() dto: CreatePlatformDto) {
    return this.platformService.createPlatform(dto);
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  findAllPlatforms() {
    return this.platformService.findAllPlatforms();
  }

  @Get(':id')
  @HttpCode(HttpStatus.OK)
  findPlatformById(@Param('id') id: string) {
    return this.platformService.findPlatformById(id);
  }


  @Delete(':id')
  @HttpCode(HttpStatus.OK)
  removePlatform(@Param('id') id: string) {
    return this.platformService.removePlatform(id);
  }
}
