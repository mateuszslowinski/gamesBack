import {Body, Controller, HttpStatus, HttpCode, Post} from '@nestjs/common';
import {AuthService} from './auth.service';
import { AuthLoginDto} from "./dto/auth-login.dto";

@Controller('auth')
export class AuthController {
    constructor(private authService: AuthService) {
    }

    @Post('signup')
    signup(@Body() dto) {
        return this.authService.signup(dto)
    }

    @HttpCode(HttpStatus.OK)
    @Post('login')
    login(@Body() dto:AuthLoginDto) {
        return this.authService.login(dto);
    }
}
