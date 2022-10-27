import { PartialType } from '@nestjs/mapped-types';
import { CreateStudioDto } from './create-studio.dto';
import {IsNumber, IsOptional, IsString, Length} from "class-validator";

export class UpdateStudioDto extends PartialType(CreateStudioDto) {
    @IsString()
    @Length(1, 50)
    @IsOptional()
    country: string

    @IsString()
    @Length(1, 36)
    @IsOptional()
    ownerId: string

    @IsString()
    @Length(0, 4)
    @IsOptional()
    founded?: string

    @IsNumber()
    @IsOptional()
    employees?: number

    @IsString()
    @Length(1, 1500)
    @IsOptional()
    description:string;

    image: string
}
