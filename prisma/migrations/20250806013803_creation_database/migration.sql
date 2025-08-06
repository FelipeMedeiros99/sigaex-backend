-- CreateTable
CREATE TABLE "public"."class" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "class_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."course" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,

    CONSTRAINT "course_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."student" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "registration" VARCHAR(20) NOT NULL,
    "courseId" INTEGER NOT NULL,
    "classId" INTEGER,

    CONSTRAINT "student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."teacher" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "registration" VARCHAR(20) NOT NULL,
    "classId" INTEGER NOT NULL,

    CONSTRAINT "teacher_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "course_name_key" ON "public"."course"("name");

-- CreateIndex
CREATE UNIQUE INDEX "student_registration_key" ON "public"."student"("registration");

-- CreateIndex
CREATE UNIQUE INDEX "teacher_registration_key" ON "public"."teacher"("registration");

-- AddForeignKey
ALTER TABLE "public"."student" ADD CONSTRAINT "student_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "public"."course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."student" ADD CONSTRAINT "student_classId_fkey" FOREIGN KEY ("classId") REFERENCES "public"."class"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."teacher" ADD CONSTRAINT "teacher_classId_fkey" FOREIGN KEY ("classId") REFERENCES "public"."class"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
