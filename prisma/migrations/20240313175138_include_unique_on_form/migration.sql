/*
  Warnings:

  - You are about to drop the column `userId` on the `form_submissions` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[shareURL]` on the table `form` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name,userId]` on the table `form` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `form_submissions` DROP COLUMN `userId`;

-- CreateIndex
CREATE UNIQUE INDEX `form_shareURL_key` ON `form`(`shareURL`);

-- CreateIndex
CREATE UNIQUE INDEX `form_name_userId_key` ON `form`(`name`, `userId`);
