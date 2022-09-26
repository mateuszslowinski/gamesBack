import {Injectable} from '@nestjs/common';
import {UpdateStudioDto} from './dto/update-studio.dto';
import {PrismaService} from "../prisma/prisma.service";
import {CreateStudioDto} from "./dto/create-studio.dto";

@Injectable()
export class StudioService {
    constructor(private prisma: PrismaService) {
    }

    async createStudio(
        dto: CreateStudioDto,
    ) {
       return await this.prisma.studio.create({
            data: {
                name: dto.name,
                country: dto.country,
                founded: dto.founded,
                employees: dto.employees,
                owner: {
                    connect: {id: dto.ownerId}
                },
            },
        })
    }


    findAll() {
        return `This action returns all studio`;
    }

    findOne(id: number) {
        return `This action returns a #${id} studio`;
    }

    update(id: number, updateStudioDto: UpdateStudioDto) {
        return `This action updates a #${id} studio`;
    }

    remove(id: number) {
        return `This action removes a #${id} studio`;
    }
}