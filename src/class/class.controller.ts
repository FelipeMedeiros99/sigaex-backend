import { Controller, Get } from '@nestjs/common';
import { ClassService } from './class.service';

@Controller("class")
export class ClassController {
  constructor(private readonly appService: ClassService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}
