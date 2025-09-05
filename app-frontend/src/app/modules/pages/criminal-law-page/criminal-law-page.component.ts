import { Component, OnInit } from '@angular/core';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import { ActivatedRoute } from '@angular/router';
import { CbrService } from '../cbr.service';

@Component({
  selector: 'app-criminal-law-page',
  templateUrl: './criminal-law-page.component.html',
  styleUrl: './criminal-law-page.component.css',
  standalone: false
})
export class CriminalLawPageComponent implements OnInit {
  public xmlDocument: Document = new Document();
  public xmlHtml: SafeHtml | undefined;

  constructor(private route: ActivatedRoute,
    private cbrService: CbrService,
    private sanitizer: DomSanitizer
  ) { }

  ngOnInit(): void {
    this.fetchCase();
  }

  fetchCase() {
    this.cbrService.getLawAkomaNtoso("krivicni").subscribe(data => {
      try {
        this.xmlDocument = new DOMParser().parseFromString(data, 'text/xml');
        const parserError = this.xmlDocument.getElementsByTagName('parsererror');
        if (parserError.length) {
          console.error('Error parsing XML:', parserError[0].textContent);
          return;
        }
        this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
          new XMLSerializer().serializeToString(this.xmlDocument)
        );
      } catch (error) {
        console.error('Error handling XML:', error);
      }
      setTimeout(() => {
        this.route.fragment.subscribe((fragment) => {
          if (fragment) {
            console.log('Fragment:', fragment);
            const element = document.getElementById(fragment);
            console.log('Element:', element);

            if (element) {
              element.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
          }
        });
      }, 100);

    });
  }

}
