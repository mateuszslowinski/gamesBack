import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { StudioService } from './studio.service';
import { CreateStudioDto } from './dto/create-studio.dto';
import { UpdateStudioDto } from './dto/update-studio.dto';

@Controller('studio')
export class StudioController {
  constructor(private readonly studioService: StudioService) {}

  @Post()
  createStudio(
      @Body() dto: CreateStudioDto
  ) {
    return this.studioService.createStudio(dto);
  }

  @Get()
  findAll() {
    return this.studioService.findAll();
  }

  @Get(':id')
  findOneById(@Param('id') id: string) {
    return this.studioService.findOneById(id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateStudioDto: UpdateStudioDto) {
    return this.studioService.update(+id, updateStudioDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.studioService.remove(+id);
  }
}
