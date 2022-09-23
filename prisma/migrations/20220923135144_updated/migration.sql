/*
  Warnings:

  - You are about to alter the column `id` on the `game` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `name` on the `game` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(100)`.
  - You are about to alter the column `developerId` on the `game` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `image` on the `game` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(80)`.
  - The primary key for the `gameonplatform` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `gameId` on the `gameonplatform` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `platformId` on the `gameonplatform` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `id` on the `platform` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `name` on the `platform` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.
  - You are about to alter the column `id` on the `publisher` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `name` on the `publisher` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `id` on the `studio` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `name` on the `studio` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(100)`.
  - You are about to alter the column `ownerId` on the `studio` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `coutrey` on the `studio` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `id` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(36)`.
  - You are about to alter the column `email` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(45)`.
  - You are about to alter the column `hash` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(64)`.

*/
-- DropForeignKey
ALTER TABLE `game` DROP FOREIGN KEY `Game_developerId_fkey`;

-- DropForeignKey
ALTER TABLE `gameonplatform` DROP FOREIGN KEY `GameOnPlatform_gameId_fkey`;

-- DropForeignKey
ALTER TABLE `gameonplatform` DROP FOREIGN KEY `GameOnPlatform_platformId_fkey`;

-- DropForeignKey
ALTER TABLE `studio` DROP FOREIGN KEY `Studio_ownerId_fkey`;

-- AlterTable
ALTER TABLE `game` MODIFY `id` VARCHAR(36) NOT NULL,
    MODIFY `name` VARCHAR(100) NOT NULL,
    MODIFY `developerId` VARCHAR(36) NOT NULL,
    MODIFY `description` VARCHAR(1000) NULL,
    MODIFY `image` VARCHAR(80) NOT NULL;

-- AlterTable
ALTER TABLE `gameonplatform` DROP PRIMARY KEY,
    MODIFY `gameId` VARCHAR(36) NOT NULL,
    MODIFY `platformId` VARCHAR(36) NOT NULL,
    ADD PRIMARY KEY (`gameId`, `platformId`);

-- AlterTable
ALTER TABLE `platform` MODIFY `id` VARCHAR(36) NOT NULL,
    MODIFY `name` VARCHAR(40) NOT NULL;

-- AlterTable
ALTER TABLE `publisher` MODIFY `id` VARCHAR(36) NOT NULL,
    MODIFY `name` VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE `studio` MODIFY `id` VARCHAR(36) NOT NULL,
    MODIFY `name` VARCHAR(100) NOT NULL,
    MODIFY `ownerId` VARCHAR(36) NOT NULL,
    MODIFY `country` VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE `user` MODIFY `id` VARCHAR(36) NOT NULL,
    MODIFY `email` VARCHAR(45) NOT NULL,
    MODIFY `hash` VARCHAR(64) NOT NULL;

-- AddForeignKey
ALTER TABLE `Studio` ADD CONSTRAINT `Studio_ownerId_fkey` FOREIGN KEY (`ownerId`) REFERENCES `Publisher`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Game` ADD CONSTRAINT `Game_developerId_fkey` FOREIGN KEY (`developerId`) REFERENCES `Studio`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GameOnPlatform` ADD CONSTRAINT `GameOnPlatform_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `Game`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GameOnPlatform` ADD CONSTRAINT `GameOnPlatform_platformId_fkey` FOREIGN KEY (`platformId`) REFERENCES `Platform`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
