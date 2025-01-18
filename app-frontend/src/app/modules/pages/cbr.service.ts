import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CbrService {
  private apiUrl = `${environment.apiHost}api/cbr/`;
  constructor(private http: HttpClient) { }

  private value$ = new BehaviorSubject<any>({});
  selectedValue$ = this.value$.asObservable();

  private headers = new HttpHeaders({
    'Content-Type': 'application/json'
  });


  getCaseAkomaNtoso(id: String) {
    console.log(id);
    const url = this.apiUrl + 'cases/xml/' + id;
    return this.http.get<any>(url, {
      responseType: 'text' as 'json',
    });
  }
}
