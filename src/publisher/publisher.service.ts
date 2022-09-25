import {ForbiddenException, Injectable} from '@nestjs/common';
import {PrismaService} from 'src/prisma/prisma.service';
import {CreatePublisherDto} from './dto/create-publisher.dto';

@Injectable()
export class PublisherService {
    constructor(private prisma: PrismaService) {}
    async createPublisher(dto: CreatePublisherDto) {
        return await this.prisma.publisher.create({
            data: {
                ...dto,
            }
        })
    }

    async findAll() {
        return this.prisma.publisher.findMany()
    }

    async findOne(id: string) {
        return await this.prisma.publisher.findUnique({
            where: {
                id
            }
        });
    }


    async remove(id: string) {
        const publisher = await this.prisma.publisher.findUnique({
            where: {
                id,
            }
        })

        if (!publisher) {
            throw new ForbiddenException('Brak wydawcy');
        }
        await this.prisma.publisher.delete({
            where: {
                id,
            }
        })
    }
}
