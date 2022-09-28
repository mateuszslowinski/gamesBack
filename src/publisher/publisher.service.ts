import {ForbiddenException, Injectable} from '@nestjs/common';
import {PrismaService} from 'src/prisma/prisma.service';
import {CreatePublisherDto} from './dto/create-publisher.dto';
import {PublisherType, StudioType} from "../types";

@Injectable()
export class PublisherService {
    constructor(private prisma: PrismaService) {}

    async createPublisher(dto: CreatePublisherDto): Promise<PublisherType> {
        return await this.prisma.publisher.create({
            data: {
                ...dto,
            }
        })
    }

    async findAllPublishers(): Promise<PublisherType[]> {
        return this.prisma.publisher.findMany()
    }

    async findOnePublisherById(id: string): Promise<PublisherType> {
        return await this.prisma.publisher.findUnique({
            where: {
                id
            }
        });
    }

    async removePublisherById(id: string): Promise<{ message: string }> {
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

    async getStudioByPublisher(id: string): Promise<StudioType[]> {
        return await this.prisma.studio.findMany({
            where: {
                ownerId: id
            }
        })
    }
}