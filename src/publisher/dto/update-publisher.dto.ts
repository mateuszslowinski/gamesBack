import { IsOptional, IsString, Length} from "class-validator";

export class UpdatePublisherDto {
    @IsString()
    @Length(1, 50)
    @IsOptional()
    name:string;

    @IsString()
    @Length(1, 1500)
    @IsOptional()
    description:string;
}
