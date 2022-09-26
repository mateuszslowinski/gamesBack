import {Controller, Get, Post, Body, Patch, Param, Delete, HttpCode, HttpStatus, UseGuards} from '@nestjs/common';
import { StudioService } from './studio.service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('studio')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @UseGuards(JwtGuard)
  @Post()
  @HttpCode(HttpStatus.CREATED)
  createStudio(
      @Body() dto: CreateStudioDto
  ) {
    return this.studioService.createStudio(dto);
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  findAllStudios() {
    return this.studioService.findAllStudios();
  }

  @Get(':id')
  @HttpCode(HttpStatus.OK)
  findStudioById(@Param('id') id: string) {
    return this.studioService.findStudioById(id);
  }

  @UseGuards(JwtGuard)
  @Patch(':id')
  @HttpCode(HttpStatus.OK)
  updateStudioById(@Param('id') id: string, @Body() dto: UpdateStudioDto) {
    return this.studioService.updateStudioById(id, dto);
  }

  @UseGuards(JwtGuard)
  @Delete(':id')
  @HttpCode(HttpStatus.OK)
  removeStudioById(@Param('id') id: string) {
    return this.studioService.removeStudioById(id);
  }
}
