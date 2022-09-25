import { Controller, Get, Post, Body, Param, Delete } from '@nestjs/common';
import { PublisherService } from './publisher.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';

@Controller('publisher')
export class PublisherController {
  constructor(private readonly publisherService: PublisherService) {}

  @Post()
  createPublisher(@Body() dto: CreatePublisherDto) {
    return this.publisherService.createPublisher(dto);
  }

  @Get()
  findAll() {
    return this.publisherService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.publisherService.findOne(id);
  }


  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.publisherService.remove(id);
  }
}
