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

    async findAllPublishers() {
        return this.prisma.publisher.findMany()
    }

    async findOnePublisherById(id: string) {
        return await this.prisma.publisher.findUnique({
            where: {
                id
            }
        });
    }


    async removePublisherById(id: string) {
        const publisher = await this.prisma.publisher.findUnique({
            where: {
                id,
            },
        });

        if (!publisher) {
            throw new ForbiddenException('Brak wydawcy');
        }
        await this.prisma.publisher.delete({
            where: {
                id,
            },
        });
        return {message: "Wydawca została usunięta"}
    }
}
