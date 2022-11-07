import {IsNotEmpty, IsString, Length} from "class-validator";

export class CreatePublisherDto {
    @IsString()
    @Length(1, 50)
    @IsNotEmpty()
    name:string;

    @IsString()
    @Length(1, 1500)
    @IsNotEmpty()
    description:string;
}
