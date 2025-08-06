import { Injectable, Param } from '@nestjs/common';
import { Student } from 'generated/prisma';
import { PrismaService } from 'src/prisma.service';


@Injectable()
export class StudentService {
  constructor(private prisma: PrismaService) {}

  async newStudent(data: Omit<Student, "id">){
    const response = await this.prisma.student.create({
      data: data
    })

    return response;
  }

  async getStudents(){
    const response = await this.prisma.student.findMany();

    return response
  }

}
