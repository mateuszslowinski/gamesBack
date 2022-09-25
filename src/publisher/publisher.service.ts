import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';

@Injectable()
export class PublisherService {
  constructor(private prisma: PrismaService) {
  }
  async createPublisher(dto: CreatePublisherDto) {
    return  await this.prisma.publisher.create({
      data:{
        ...dto,
      }
    })
  }

  findAll() {
    return `This action returns all publisher`;
  }

  findOne(id: number) {
    return `This action returns a #${id} publisher`;
  }


  remove(id: number) {
    return `This action removes a #${id} publisher`;
  }
}
