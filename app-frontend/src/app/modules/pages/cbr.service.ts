import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { CaseAttributes } from '../../dto/CaseAttributes';

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
    const url = this.apiUrl + 'cases/xml/' + id;
    return this.http.get<any>(url, {
      responseType: 'text' as 'json',
    });
  }

  getLawAkomaNtoso(name: String) {
    const url = this.apiUrl + 'laws/xml/' + name;
    return this.http.get<any>(url, {
      responseType: 'text' as 'json',
    });
  }

  getCaseAttributes(id: String): Observable<CaseAttributes> {
    const url = this.apiUrl + 'cases/xml/attributes/' + id;
    return this.http.get<CaseAttributes>(url);
  }

  getAllCaseNames(): Observable<String[]>{
    const url = this.apiUrl + 'cases/names';
    return this.http.get<String[]>(url);
  }
}
