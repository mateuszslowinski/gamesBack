import {IsArray, IsNotEmpty, IsOptional, IsString, Length} from "class-validator";

export class CreateGameDto {
    @IsString()
    @Length(1, 100)
    @IsNotEmpty()
    name: string;

    @IsString()
    @Length(1, 36)
    @IsNotEmpty()
    developerId: string

    @IsString()
    @IsOptional()
    releaseDate: string

    @IsString()
    @Length(0, 1000)
    @IsNotEmpty()
    description: string

    @IsArray()
    platformId: string[];

    image: string
}
