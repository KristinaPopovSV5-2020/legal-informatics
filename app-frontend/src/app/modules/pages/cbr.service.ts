import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { CaseAttributes } from '../../dto/CaseAttributes';

@Injectable({
  providedIn: 'root',
})
export class CbrService {
  private apiUrl = `${environment.apiHost}api/cbr/`;
  constructor(private http: HttpClient) { }

  private value$ = new BehaviorSubject<any>({});
  selectedValue$ = this.value$.asObservable();

  private headers = new HttpHeaders({
    'Content-Type': 'application/json',
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

  getAllCaseNames(): Observable<String[]> {
    const url = this.apiUrl + 'cases/names';
    return this.http.get<String[]>(url);
  }

  reasonByRules(data: CaseDTO): Observable<string> {
    return this.http.post<string>(
      environment.apiHost + 'api/cbr/rules/fire',
      data,
      { headers: this.headers, responseType: 'text' as 'json' }
    );
  }

  addNewCase(caseData: CaseDetails): Observable<CaseDetails> {
    return this.http.post<CaseDetails>(
      environment.apiHost + 'api/cbr/new-case',
      caseData,
      { headers: this.headers }
    );
  }

  fetchSimilarityCases(caseData: CaseDTO): Observable<RecommendationsDTO[]> {
    return this.http.post<RecommendationsDTO[]>(
      environment.apiHost + 'api/cbr/recommend-cases',
      caseData,
      { headers: this.headers }
    );
  }
}

export interface CaseDTO {
  name: string;
  defendant: string;
  lowIncome: string;
  previouslyConvicted: string;
  methodOfWeaponDiscovery: string;
  unauthorizedPossessionOfAWeapon: string;
  harmDone: string;
  regretsIt: string;
  admittedGuilt: string;
  hasWeaponTypeA: string;
  hasWeaponTypeB: string;
  hasWeaponTypeC: string;
  hasWeaponTypeD: string;
  highIncome: string;
}

export interface CaseDetails {
  caseNumber: string;
  judge: string;
  defendant: string;
  criminalOffense: string;
  court: string;
  date: string;
  previouslyConvicted: string;
  forSameOffense: string;
  illegallyPossessesWeapon: string;
  location: string;
  weapon: string;
  ammunitionCount: string;
  financialStatus: string;
  admittedGuilt: string;
  remorseful: string;
  weaponType: string;
  injuryCausedByWeapon: string;
  fineAmount: string;
  securityMeasure: string;
  violatedArticles: string;
  sentence: string;
}

export interface RecommendationsDTO {
  cases: String[];
}