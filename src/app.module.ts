import {Module} from '@nestjs/common';
import {PrismaModule} from "./prisma/prisma.module";
import {ConfigModule} from "@nestjs/config";
import { AuthModule } from './auth/auth.module';
import {UserModule} from "./user/user.module";
import { PublisherModule } from './publisher/publisher.module';

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
        }),
        PrismaModule,
        AuthModule,
        UserModule,
        PublisherModule
    ],
})
export class AppModule {
}
