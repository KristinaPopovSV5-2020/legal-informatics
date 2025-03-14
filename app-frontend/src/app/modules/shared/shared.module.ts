import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../../../infrastructure/material.module';
import { LinkComponent } from './link/link.component';
import { ButtonComponent } from './button/button.component';



@NgModule({
  declarations: [LinkComponent, ButtonComponent],
  imports: [
    CommonModule,
    MaterialModule
  ],
  exports:[
    LinkComponent,
    ButtonComponent
  ]
})
export class SharedModule { }
