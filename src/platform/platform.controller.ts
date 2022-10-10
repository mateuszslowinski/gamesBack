import {Controller, Get, Post, Body, Param, Delete, HttpCode, HttpStatus, UseGuards, Patch} from '@nestjs/common';
import { PlatformService } from './platform.service';
import { CreatePlatformDto } from './dto/create-platform.dto';
import {JwtGuard} from "../guards/jwt.guard";
import {PlatformType} from "../types";
import {UpdatePlatformDto} from "./dto/update-platform.dto";

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
  @UseGuards(JwtGuard)
  @Patch(':id')
  @HttpCode(HttpStatus.OK)
  updatePublisherById(
      @Param('id') id: string,
      @Body() dto: UpdatePlatformDto,
  ): Promise<PlatformType> {
    return this.platformService.updatePlatformById(id, dto);
  }

  @UseGuards(JwtGuard)
  @Delete(':id')
  @HttpCode(HttpStatus.OK)
  removePlatform(@Param('id') id: string) {
    return this.platformService.removePlatform(id);
  }
}
