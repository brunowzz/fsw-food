/*
  Warnings:

  - Changed the type of `deliveryFee` on the `Restaurant` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `deliveryTime` on the `Restaurant` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Restaurant" DROP COLUMN "deliveryFee",
ADD COLUMN     "deliveryFee" DECIMAL(10,2) NOT NULL,
DROP COLUMN "deliveryTime",
ADD COLUMN     "deliveryTime" INTEGER NOT NULL;
