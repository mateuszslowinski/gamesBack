import {Controller, Get, Post, Body, Patch, Param, Delete, HttpCode, HttpStatus, UseGuards} from '@nestjs/common';
import { StudioService } from './studio.service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('studio')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
  @UseGuards(JwtGuard)
  @HttpCode(HttpStatus.CREATED)
  createStudio(
      @Body() dto: CreateStudioDto
  ) {
    return this.studioService.createStudio(dto);
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  findAll() {
    return this.studioService.findAll();
  }

  @Get(':id')
  @HttpCode(HttpStatus.OK)
  findOneById(@Param('id') id: string) {
    return this.studioService.findOneById(id);
  }

  @Patch(':id')
  @UseGuards(JwtGuard)
  @HttpCode(HttpStatus.OK)
  update(@Param('id') id: string, @Body() dto: UpdateStudioDto) {
    return this.studioService.update(id, dto);
  }

  @Delete(':id')
  @UseGuards(JwtGuard)
  @HttpCode(HttpStatus.OK)
  remove(@Param('id') id: string) {
    return this.studioService.remove(id);
  }
}
