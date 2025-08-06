import { Controller, Get } from '@nestjs/common';
import { TeacherService } from './teacher.service';

@Controller("teacher")
export class TeacherController {
  constructor(private readonly appService: TeacherService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}
