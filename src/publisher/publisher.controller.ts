import {Controller, Get, Post, Body, Param, Delete, UseGuards} from '@nestjs/common';
import { PublisherService } from './publisher.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('publisher')
export class PublisherController {
  constructor(private readonly publisherService: PublisherService) {}

  @Post()
  @UseGuards(JwtGuard)
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
  @UseGuards(JwtGuard)
  remove(@Param('id') id: string) {
    return this.publisherService.remove(id);
  }
}
