import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CbrService } from '../cbr.service';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import { CaseAttributes } from '../../../dto/CaseAttributes';

@Component({
  selector: 'app-case-page',
  templateUrl: './case-page.component.html',
  styleUrl: './case-page.component.css',
  standalone: false
})
export class CasePageComponent implements OnInit {
  caseId: string | null = null;
  public xmlDocument: Document = new Document();
  public xmlHtml: SafeHtml | undefined;
  public caseAttributes: CaseAttributes = null;
  loadingText: string = "Učitavanje detalja";
  private dotCount: number = 0;
  constructor(private route: ActivatedRoute,
    private cbrService: CbrService,
    private sanitizer: DomSanitizer
  ) { }

  ngOnInit(): void {
    this.fetchCaseAndAttributes();

    this.route.paramMap.subscribe(params => {
      this.caseId = params.get('id');
      if (this.caseId) {
        this.fetchCaseAndAttributes();
      }
    });
  }

  fetchCaseAndAttributes() {
    if (this.caseId) {
      this.fetchCase(this.caseId);
      this.caseAttributes = null;
      this.startLoadingDots();
      this.fetchCaseAttributes(this.caseId);
    }
  }

  fetchCaseAttributes(caseId: string) {
    this.cbrService.getCaseAttributes(caseId).subscribe(data => {
      this.caseAttributes = data;
    });
  }

  fetchCase(caseId: string) {
    console.log(`Fetching details for case: ${caseId}`);
    this.cbrService.getCaseAkomaNtoso(caseId).subscribe(data => {
      this.xmlDocument = new DOMParser().parseFromString(
        data,
        'text/xml'
      );
      this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
        new XMLSerializer().serializeToString(this.xmlDocument)
      );
    });
  }

  startLoadingDots() {
    setInterval(() => {
      if (!this.caseAttributes) {
        this.dotCount = (this.dotCount + 1) % 4;
        this.loadingText = "Učitavanje detalja" + '.'.repeat(this.dotCount);
      }
    }, 400);
  }
}
