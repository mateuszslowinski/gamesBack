/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Game` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `Platform` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `Publisher` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `Studio` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `Game_name_key` ON `Game`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `Platform_name_key` ON `Platform`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `Publisher_name_key` ON `Publisher`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `Studio_name_key` ON `Studio`(`name`);
