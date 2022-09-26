import { IsNotEmpty, IsNumber, IsOptional, IsString, Length} from "class-validator";

export class CreateStudioDto {

    @IsString()
    @Length(1, 100)
    @IsNotEmpty()
    name: string;

    @IsString()
    @Length(1, 50)
    @IsNotEmpty()
    country: string

    @IsString()
    @Length(1, 36)
    ownerId: string

    @IsString()
    @Length(0, 4)
    @IsOptional()
    founded?: string

    @IsNumber()
    @IsOptional()
    employees?: number
}
