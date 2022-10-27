import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  UseGuards,
  HttpCode,
  HttpStatus, Patch,
} from '@nestjs/common';
import { PublisherService } from './publisher.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';
import {JwtGuard} from "../guards/jwt.guard";
import {PublisherType} from "../types";
import {UpdatePublisherDto} from "./dto/update-publisher.dto";

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

  @Get(':name')
  findOnePublisherById(@Param('name') name: string) {
    return this.publisherService.findOnePublisherByName(name);
  }

  @UseGuards(JwtGuard)
  @Patch(':name')
  @HttpCode(HttpStatus.OK)
  updatePublisherById(
      @Param('name') name: string,
      @Body() dto: UpdatePublisherDto,
  ): Promise<PublisherType> {
    return this.publisherService.updatePublisherByName(name, dto);
  }

  @UseGuards(JwtGuard)
  @Delete(':id')
  removePublisherById(@Param('id') id: string) {
    return this.publisherService.removePublisherById(id);
  }

  @Get('/:name/studios')
  getStudioByPublisher(@Param('name') name: string) {
    return this.publisherService.getStudioByPublisher(name);
  }
}
