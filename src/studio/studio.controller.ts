import {Controller, Get, Post, Body, Patch, Param, Delete, HttpCode, HttpStatus} from '@nestjs/common';
import { StudioService } from './studio.service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';

@Controller('studio')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
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
  update(@Param('id') id: string, @Body() updateStudioDto: UpdateStudioDto) {
    return this.studioService.update(+id, updateStudioDto);
  }

  @Delete(':id')
  @HttpCode(HttpStatus.OK)
  remove(@Param('id') id: string) {
    return this.studioService.remove(id);
  }
}
