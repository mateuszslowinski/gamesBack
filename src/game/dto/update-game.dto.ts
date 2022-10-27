import { PartialType } from '@nestjs/mapped-types';
import { CreateGameDto } from './create-game.dto';
import {IsOptional, IsString, Length} from "class-validator";

export class UpdateGameDto extends PartialType(CreateGameDto) {
    @IsString()
    @Length(1, 36)
    @IsOptional()
    developerId: string

    @IsString()
    @IsOptional()
    releaseDate: string

    @IsString()
    @Length(0, 1000)
    @IsOptional()
    description: string

    image: string
}
