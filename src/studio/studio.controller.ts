import {
    Controller,
    Get,
    Post,
    Body,
    Patch,
    Param,
    Delete,
    HttpCode,
    HttpStatus,
    UseGuards,
    UseInterceptors,
    UploadedFiles,
    Res
} from '@nestjs/common';
import {StudioService} from './studio.service';
import {CreateStudioDto} from './dto/create-studio.dto';
import {UpdateStudioDto} from './dto/update-studio.dto';
import {JwtGuard} from "../guards/jwt.guard";
import {FileFieldsInterceptor} from "@nestjs/platform-express";
import {MulterDiskUploadedFiles} from "../types/files/files";
import * as path from "path";
import {multerStorage, storageDir} from 'src/utils/storage';
import {StudioType} from "../types";


@Controller('studio')
export class StudioController {
    constructor(private readonly studioService: StudioService) {
    }

    @UseGuards(JwtGuard)
    @Post()
    @UseInterceptors(
        FileFieldsInterceptor([{name: 'image', maxCount: 1},],
            {storage: multerStorage(path.join(storageDir(), 'studios-photos'))},
        )
    )
    @HttpCode(HttpStatus.CREATED)
    createStudio(
        @Body() dto: CreateStudioDto,
        @UploadedFiles() files: MulterDiskUploadedFiles
    ): Promise<StudioType> {
        return this.studioService.createStudio(dto, files);
    }

    @Get()
    @HttpCode(HttpStatus.OK)
    findAllStudios(): Promise<StudioType[]> {
        return this.studioService.findAllStudios();
    }

    @Get(':name')
    @HttpCode(HttpStatus.OK)
    findStudioById(
        @Param('name') name: string,
    ): Promise<StudioType> {
        return this.studioService.findStudioByName(name);
    }

    @UseGuards(JwtGuard)
    @Patch(':id')
    @UseInterceptors(
        FileFieldsInterceptor([{name: 'image', maxCount: 1},],
            {storage: multerStorage(path.join(storageDir(), 'studios-photos'))},
        )
    )
    @HttpCode(HttpStatus.OK)
    updateStudioById(
        @Param('id') id: string,
        @Body() dto: UpdateStudioDto,
        @UploadedFiles() files: MulterDiskUploadedFiles
    ): Promise<StudioType> {
        return this.studioService.updateStudioById(id, dto, files);
    }

    @UseGuards(JwtGuard)
    @Delete(':id')
    @HttpCode(HttpStatus.OK)
    removeStudioById(
        @Param('id') id: string
    ): Promise<{ message: string }> {
        return this.studioService.removeStudioById(id);
    }


    @Get('/photo/:id')
    @HttpCode(HttpStatus.OK)
    async getPhoto(
        @Param('id') id: string,
        @Res() res: any,
    ): Promise<any> {
        return this.studioService.getPhoto(id, res);
    }


}
