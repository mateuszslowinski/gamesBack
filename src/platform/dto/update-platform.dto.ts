import { IsOptional, IsString, Length} from "class-validator";

export class UpdatePlatformDto {
    @IsString()
    @Length(1, 40)
    @IsOptional()
    name:string;

    @IsString()
    @Length(1, 1500)
    @IsOptional()
    description:string;
}
