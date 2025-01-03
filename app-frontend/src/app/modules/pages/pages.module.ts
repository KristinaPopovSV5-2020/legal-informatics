import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../../../infrastructure/material.module';
import { LawPageComponent } from './law-page/law-page.component';
import { SharedModule } from '../shared/shared.module';



@NgModule({
  declarations: [LawPageComponent],
  imports: [
    CommonModule,
    MaterialModule,
    SharedModule
  ]
})
export class PagesModule { }
