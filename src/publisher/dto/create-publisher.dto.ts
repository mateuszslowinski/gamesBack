import {IsNotEmpty, IsString, Length} from "class-validator";

export class CreatePublisherDto {
    @IsString()
    @Length(1, 50)
    @IsNotEmpty()
    name:string;
}
