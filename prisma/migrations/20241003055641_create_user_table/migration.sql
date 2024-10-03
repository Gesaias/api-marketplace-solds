-- CreateEnum
CREATE TYPE "public"."UserDocumentType" AS ENUM ('cpf', 'cnpf');

-- CreateEnum
CREATE TYPE "public"."UserGender" AS ENUM ('male', 'female', 'other');

-- CreateTable
CREATE TABLE "public"."user" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "document" TEXT NOT NULL,
    "document_type" "public"."UserDocumentType" NOT NULL,
    "birthday" TIMESTAMP(3) NOT NULL,
    "gender" "public"."UserGender" NOT NULL,
    "email" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_username_key" ON "public"."user"("username");

-- CreateIndex
CREATE UNIQUE INDEX "user_document_key" ON "public"."user"("document");

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "public"."user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "user_telefone_key" ON "public"."user"("telefone");
