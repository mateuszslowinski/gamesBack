import {IsNotEmpty, IsOptional, IsString, Length} from "class-validator";

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
    @IsOptional()
    description: string

    @IsString()
    @Length(0, 80)
    @IsNotEmpty()
    image: string
}
