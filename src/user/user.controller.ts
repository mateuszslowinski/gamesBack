import {Controller, Get, UseGuards} from "@nestjs/common";
import {UserService} from "./user.service";
import {JwtGuard} from "../guards/jwt.guard";
import {GetUser} from "../docorators/get-user.decorator";
import {User} from "@prisma/client";

@Controller('user')
export class UserController {
    constructor(private userService: UserService) {
    }

    @UseGuards(JwtGuard)
    @Get('/')
    getMe(@GetUser() user: User) {
        return user
    }
}