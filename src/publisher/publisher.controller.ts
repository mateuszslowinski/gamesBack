import {Controller, Get, Post, Body, Param, Delete, UseGuards} from '@nestjs/common';
import { PublisherService } from './publisher.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';
import {JwtGuard} from "../guards/jwt.guard";

@Controller('publisher')
export class PublisherController {
  constructor(private readonly publisherService: PublisherService) {}

  @UseGuards(JwtGuard)
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

  @UseGuards(JwtGuard)
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.publisherService.remove(id);
  }
}
