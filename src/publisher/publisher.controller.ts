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
  findAllPublishers() {
    return this.publisherService.findAllPublishers();
  }

  @Get(':id')
  findOnePublisherById(@Param('id') id: string) {
    return this.publisherService.findOnePublisherById(id);
  }

  @UseGuards(JwtGuard)
  @Delete(':id')
  removePublisherById(@Param('id') id: string) {
    return this.publisherService.removePublisherById(id);
  }
}
