/*
  Warnings:

  - You are about to drop the `Form` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `FormSubmissions` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `FormSubmissions` DROP FOREIGN KEY `FormSubmissions_formId_fkey`;

-- DropTable
DROP TABLE `Form`;

-- DropTable
DROP TABLE `FormSubmissions`;

-- CreateTable
CREATE TABLE `form` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `published` BOOLEAN NOT NULL DEFAULT false,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL DEFAULT '',
    `content` VARCHAR(191) NOT NULL DEFAULT '[]',
    `visits` INTEGER NOT NULL DEFAULT 0,
    `submissions` INTEGER NOT NULL DEFAULT 0,
    `shareURL` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `form_submissions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `userId` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `formId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `form_submissions` ADD CONSTRAINT `form_submissions_formId_fkey` FOREIGN KEY (`formId`) REFERENCES `form`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
