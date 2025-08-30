import { Component, Input } from '@angular/core';
import { CaseAttributes } from '../../../dto/CaseAttributes';

@Component({
  selector: 'app-similar-case',
  templateUrl: './similar-case.component.html',
  styleUrl: './similar-case.component.css',
  standalone: false,
})
export class SimilarCaseComponent {
  @Input() caseData: CaseAttributes;
}
