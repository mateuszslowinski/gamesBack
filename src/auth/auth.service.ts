import {ForbiddenException, Injectable} from '@nestjs/common';
import {AuthLoginDto} from "./dto/auth-login.dto";
import * as bcrypt from 'bcrypt';
import {PrismaService} from "../prisma/prisma.service";
import {PrismaClientKnownRequestError} from '@prisma/client/runtime';
import {JwtService} from "@nestjs/jwt";
import {ConfigService} from "@nestjs/config";

@Injectable()
export class AuthService {
    constructor(
        private prisma: PrismaService,
        private jwt: JwtService,
        private config: ConfigService) {
    }

    async signup(dto) {
        const salt = await bcrypt.genSalt(10);
        const encryptedPassword = await bcrypt.hash(dto.hash, salt)
        try {
            await this.prisma.user.create({
                data: {
                    email: dto.email,
                    hash: encryptedPassword,
                    isAdmin: true
                },
            });
            return 'Udana rejestracja'
        } catch (error) {
            if (error instanceof PrismaClientKnownRequestError) {
                if (error.code === 'P2002') {
                    throw new ForbiddenException('Powtarzające się dane');
                }
            }
            throw error;
        }
    }

    async login(dto: AuthLoginDto) {
        const user = await this.prisma.user.findUnique({
            where: {
                email: dto.email,
            },
        });
        if (!user) throw new ForbiddenException('Brak użytkownika')

        const isCorrectPassword = await bcrypt.compare(dto.hash, user.hash);
        if (!isCorrectPassword) throw new ForbiddenException('Nie prawidłowe hasło')

        return this.signToken(user.id, user.email);
    }

    async signToken(userId: string, email: string):Promise<{ access_token: string }> {
        const payload = {
            sub: userId,
            email
        }
        const secret = this.config.get('JWT_SECRET');

        const token = await this.jwt.signAsync(payload, {
            expiresIn: '14d',
            secret,
        });

        return {
            access_token: token,
        };
    }
}
