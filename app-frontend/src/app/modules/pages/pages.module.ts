import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedModule } from '../shared/shared.module';
import { CasePageComponent } from './case-page/case-page.component';
import { CriminalLawPageComponent } from './criminal-law-page/criminal-law-page.component';
import { WeaponLawPageComponent } from './weapon-law-page/weapon-law-page.component';
import { MaterialModule } from '../../../infrastructure/material.module';



@NgModule({
  declarations: [CriminalLawPageComponent,WeaponLawPageComponent, CasePageComponent],
  imports: [
    CommonModule,
    MaterialModule,
    SharedModule
  ]
})
export class PagesModule { }
