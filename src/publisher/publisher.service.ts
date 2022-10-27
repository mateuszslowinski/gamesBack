import {ForbiddenException, Injectable} from '@nestjs/common';
import {PrismaService} from 'src/prisma/prisma.service';
import {CreatePublisherDto} from './dto/create-publisher.dto';
import {PublisherType, StudioType} from "../types";
import {UpdatePublisherDto} from "./dto/update-publisher.dto";

@Injectable()
export class PublisherService {
    constructor(private prisma: PrismaService) {
    }

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

    async findOnePublisherByName(name: string): Promise<PublisherType> {
        return await this.prisma.publisher.findUnique({
            where: {
               name
            }
        });
    }

    async updatePublisherById(id: string, dto: UpdatePublisherDto): Promise<PublisherType> {
        try {
            return this.prisma.publisher.update({
                where: {
                    id
                }, data: {
                    ...dto,
                },
            })
        } catch (e) {
            throw e;        }
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

    async getStudioByPublisher(name: string): Promise<StudioType[]> {
        const publisher= await this.prisma.publisher.findUnique({
            where: {
                name
            }
        });
        return await this.prisma.studio.findMany({
            where: {
                ownerId: publisher.id
            }
        })
    }
}