import { Controller, Get } from '@nestjs/common';
import { StudentService } from './student.service';

@Controller("student")
export class StudentController {
  constructor(private readonly appService: StudentService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}
