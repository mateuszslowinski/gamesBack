import {Module} from '@nestjs/common';
import {PrismaModule} from "./prisma/prisma.module";
import {ConfigModule} from "@nestjs/config";
import { AuthModule } from './auth/auth.module';
import {UserModule} from "./user/user.module";
import { PublisherModule } from './publisher/publisher.module';
import { StudioModule } from './studio/studio.module';

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
        }),
        PrismaModule,
        AuthModule,
        UserModule,
        PublisherModule,
        StudioModule
    ],
})
export class AppModule {
}
