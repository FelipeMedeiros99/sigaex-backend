import { Body, Controller, Get, Post, Put } from '@nestjs/common';
import { StudentService } from './student.service';
import { Student } from 'generated/prisma';

@Controller("students")
export class StudentController {
  constructor(private readonly appService: StudentService) {}

  @Get()
  async getHello(){
    return await this.appService.getStudents();
  }

  @Post("new-student")
  async newStudent(@Body() data: Omit<Student, "id">){
    return await this.appService.newStudent(data)
  }
}
