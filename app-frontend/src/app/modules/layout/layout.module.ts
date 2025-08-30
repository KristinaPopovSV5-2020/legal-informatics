import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../../../infrastructure/material.module';
import { ToolbarComponent } from './toolbar/toolbar.component';
import { SharedModule } from '../shared/shared.module';
import { SimilarCaseComponent } from './similar-case/similar-case.component';

@NgModule({
  declarations: [ToolbarComponent, SimilarCaseComponent],
  imports: [CommonModule, MaterialModule, SharedModule],
  exports: [ToolbarComponent, SimilarCaseComponent],
})
export class LayoutModule {}
