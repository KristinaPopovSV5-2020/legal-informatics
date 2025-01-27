import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CbrService } from '../cbr.service';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';

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

  constructor(private route: ActivatedRoute,
    private cbrService: CbrService,
    private sanitizer: DomSanitizer,
  ) {}

  ngOnInit(): void {
    this.caseId = this.route.snapshot.paramMap.get('id');
    console.log('Selected case:', this.caseId);
    if (this.caseId) {
      this.fetchCase(this.caseId);
    }
  }

  fetchCase(caseId: string) {
    console.log(`Fetching details for case: ${caseId}`);
    this.cbrService.getCaseAkomaNtoso(caseId).subscribe(data => { 
      console.log(data);
      this.xmlDocument = new DOMParser().parseFromString(
        data,
        'text/xml'
      );
      this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
        new XMLSerializer().serializeToString(this.xmlDocument)
      );

    });
  }
}
