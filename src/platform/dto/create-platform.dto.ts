import {IsNotEmpty, IsString, Length} from "class-validator";

export class CreatePlatformDto {
    @IsString()
    @Length(1, 40)
    @IsNotEmpty()
    name:string;

    @IsString()
    @Length(1, 1500)
    @IsNotEmpty()
    description:string;
}
