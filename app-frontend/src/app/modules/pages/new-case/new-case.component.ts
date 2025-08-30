import { Component } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CaseDetails, CaseDTO, CbrService } from '../cbr.service';
import { CaseAttributes } from '../../../dto/CaseAttributes';

@Component({
  selector: 'app-new-case',
  templateUrl: './new-case.component.html',
  styleUrl: './new-case.component.css',
  standalone: false,
})
export class NewCaseComponent {
  caseForm: FormGroup;
  newCaseForm: FormGroup;
  lawArticleForm: FormGroup;
  weaponArticleForm: FormGroup;

  decision: string = null;
  isLoading: boolean = false;
  isLoadingSimilarity: boolean = false;
  sentences: string[] = [];
  similarCases: CaseAttributes[] = [];

  constructor(private fb: FormBuilder, private cbrService: CbrService) {
    this.caseForm = this.fb.group({
      name: ['', [Validators.required]],
      defendant: ['', [Validators.required]],
      lowIncome: ['ne', [Validators.required]],
      court: ['', [Validators.required]],
      previouslyConvicted: ['ne', [Validators.required]],
      date: ['', [Validators.required]],
      prosecutor: ['', [Validators.required]],
      unauthorizedPossessionOfAWeapon: ['ne', [Validators.required]],
      harmDone: ['ne', [Validators.required]],
      regretsIt: ['ne', [Validators.required]],
      admittedGuilt: ['ne', [Validators.required]],
      hasWeaponTypeA: ['ne', [Validators.required]],
      hasWeaponTypeB: ['ne', [Validators.required]],
      hasWeaponTypeC: ['ne', [Validators.required]],
      hasWeaponTypeD: ['ne', [Validators.required]],
      methodOfWeaponDiscovery: ['javno', [Validators.required]],
    });
    this.newCaseForm = this.fb.group({
      criminalOffense: ['', [Validators.required]],
      fineAmount: [0, [Validators.required]],
      sentence: [0, [Validators.required]],
      lawArticles: this.fb.array([], [Validators.required]),
      weapoons: this.fb.array([], [Validators.required]),
      securityMeasure: [''],
    });

    this.lawArticleForm = this.fb.group({
      law: ['', Validators.required],
      articleNumber: [''],
      paragraph: [0],
      item: [0],
    });
    this.weaponArticleForm = this.fb.group({
      weapon: ['', Validators.required],
      ammunitionCount: [0, Validators.required],
    });
  }

  findCases() {
    if (this.caseForm.valid) {
      this.isLoading = true;
      const caseDTO = this.createCaseDTO();
      this.cbrService.reasonByRules(caseDTO).subscribe({
        next: (result: string) => {
          console.log(result);
          this.decision = result;
          this.sentences = result
            .split('.')
            .map((sentence) => sentence.trim())
            .filter((sentence) => sentence.length > 0);
          this.isLoading = false;
        },
        error: (error) => {
          console.log(error);
        },
      });
      this.fetchSimilarCases()
    }
  }

  addNewCase() {
    if (this.caseForm.valid && this.newCaseForm.valid) {
      const caseData = this.createCaseData();
      console.log(caseData);

      this.isLoading = true;
      this.cbrService.addNewCase(caseData).subscribe({
        next: (res) => {
          console.log('Case saved:', res);
          this.isLoading = false;
        },
        error: (err) => {
          console.error('Error saving case:', err);
          this.isLoading = false;
        },
      });
    }
  }

  createCaseDTO(): CaseDTO {
    let li = 'ne';
    let hi = 'ne';
    if (this.caseForm.value.lowIncome === 'da') {
      li = 'da';
    } else if (this.caseForm.value.lowIncome === 'ne') {
      hi = 'da';
    }
    const caseDTO: CaseDTO = {
      name: this.caseForm.value.name,
      defendant: this.caseForm.value.defendant,
      lowIncome: li,
      previouslyConvicted: this.caseForm.value.previouslyConvicted,
      methodOfWeaponDiscovery: this.caseForm.value.methodOfWeaponDiscovery,
      unauthorizedPossessionOfAWeapon:
        this.caseForm.value.unauthorizedPossessionOfAWeapon,
      harmDone: this.caseForm.value.harmDone,
      regretsIt: this.caseForm.value.regretsIt,
      admittedGuilt: this.caseForm.value.admittedGuilt,
      hasWeaponTypeA: this.caseForm.value.hasWeaponTypeA,
      hasWeaponTypeB: this.caseForm.value.hasWeaponTypeB,
      hasWeaponTypeC: this.caseForm.value.hasWeaponTypeC,
      hasWeaponTypeD: this.caseForm.value.hasWeaponTypeD,
      highIncome: hi,
    };
    return caseDTO;
  }

  createCaseData(): CaseDetails {
    const formValues = { ...this.caseForm.value, ...this.newCaseForm.value };

    const weaponType = [
      formValues.hasWeaponTypeA === 'da' ? 'A' : '',
      formValues.hasWeaponTypeB === 'da' ? 'B' : '',
      formValues.hasWeaponTypeC === 'da' ? 'C' : '',
      formValues.hasWeaponTypeD === 'da' ? 'D' : '',
    ]
      .filter(Boolean)
      .join(', ');

    const caseData: CaseDetails = {
      caseNumber: formValues.name,
      judge: formValues.prosecutor,
      defendant: formValues.defendant,
      criminalOffense: formValues.criminalOffense,
      court: formValues.court,
      date: formValues.date,
      previouslyConvicted: formValues.previouslyConvicted,
      forSameOffense:
        'neosuđivan, protiv kojeg se ne vodi postupak za drugo krivično djelo.', // Check this
      illegallyPossessesWeapon: formValues.unauthorizedPossessionOfAWeapon,
      location: formValues.methodOfWeaponDiscovery,
      weapon:
        this.newCaseForm.value.weapoons?.map((w) => w.weapon).join(', ') || '',
      ammunitionCount:
        this.newCaseForm.value.weapoons
          ?.map((w) => w.ammunitionCount)
          .join(', ') || '',
      financialStatus:
        formValues.lowIncome === 'da'
          ? 'loše'
          : formValues.lowIncome === 'ne'
          ? 'dobro'
          : 'srednje',
      admittedGuilt: formValues.admittedGuilt,
      remorseful: formValues.regretsIt,
      weaponType,
      injuryCausedByWeapon: formValues.harmDone,
      fineAmount: formValues.fineAmount,
      securityMeasure: formValues.securityMeasure,
      violatedArticles: formValues.lawArticles
        ?.map((a) => {
          let parts = [`${a.law}`];
          if (a.articleNumber) parts.push(`član ${a.articleNumber}`);
          if (a.paragraph) parts.push(`stav ${a.paragraph}`);
          if (a.item) parts.push(`tačka ${a.item}`);
          return parts.join(', ');
        })
        .join(' | '),
      sentence: formValues.sentence,
    };
    return caseData;
  }

  fetchSimilarCases(caseDTO: CaseDTO) {
    this.cbrService.fetchSimilarityCases(caseDTO).subscribe({
      next: (cases: CaseAttributes[]) => {
        this.similarCases = cases;
        this.isLoadingSimilarity = false;
      },
      error: (err) => {
        console.error('Greška pri dobavljanju sličnih slučajeva:', err);
        this.isLoadingSimilarity = false;
        //REMOVE IT AFTER
        this.similarCases = SIMILAR_CASES;
      },
    });
  }

  get lawArticles(): FormArray {
    return this.newCaseForm?.get('lawArticles') as FormArray;
  }

  get weaponArticles(): FormArray {
    return this.newCaseForm?.get('weapoons') as FormArray;
  }

  createLawArticle(): FormGroup {
    return this.fb.group({
      law: ['', Validators.required],
      articleNumber: [''],
      paragraph: [''],
      item: [''],
    });
  }

  createWeaponArticle(): FormGroup {
    return this.fb.group({
      weapon: ['', Validators.required],
      ammunitionCount: [0],
    });
  }

  addLawArticle(): void {
    if (this.lawArticleForm.valid) {
      this.lawArticles.push(this.fb.group(this.lawArticleForm.value));
      this.lawArticleForm.reset();
    }
  }

  addWeaponArticle(): void {
    if (this.weaponArticleForm.valid) {
      this.weaponArticles.push(this.fb.group(this.weaponArticleForm.value));
      this.weaponArticleForm.reset();
    }
  }

  removeLawArticle(index: number): void {
    this.lawArticles.removeAt(index);
  }

  removeWeaponArticle(index: number): void {
    this.weaponArticles.removeAt(index);
  }
}

export const SIMILAR_CASES: CaseAttributes[] = [
  {
    id: { timestamp: 1625140800000, date: 1625140800000 },
    caseId: '1',
    caseNumber: 'K 130/2015',
    judge: 'Miloš Petrović',
    defendant: 'A. M., B. N.',
    criminalOffense: 'nedozvoljeno držanje oružja i eksplozivnih materija',
    court: 'Osnovni sud u Podgorici',
    date: '2015-05-20',
    previouslyConvicted: 'neosuđivan',
    forSameOffense: 'da',
    illegallyPossessesWeapon: 'da',
    location: 'Podgorica',
    weapon: 'pištolj',
    weaponType: 'vatreno oružje',
    ammunitionCount: '5',
    financialStatus: 'srednjeg imovnog stanja',
    admittedGuilt: 'da',
    remorseful: 'ne',
    injuryCausedByWeapon: 'ne',
    fineAmount: '80,00€',
    securityMeasure: 'Zabrana nošenja oružja',
    violatedArticles: 'čl. 403 st. 1, čl. 13 st. 1, čl. 41',
    sentence: '90',
    similarity: 92.5,
  },
  {
    id: { timestamp: 1625227200000, date: 1625227200000 },
    caseId: '2',
    caseNumber: 'K 140/2015',
    judge: 'Ana Nikolić',
    defendant: 'C. D., D. E.',
    criminalOffense: 'nedozvoljeno držanje oružja i eksplozivnih materija',
    court: 'Osnovni sud u Nikšiću',
    date: '2015-06-01',
    previouslyConvicted: 'osuđivan',
    forSameOffense: 'ne',
    illegallyPossessesWeapon: 'da',
    location: 'Nikšić',
    weapon: 'revolver',
    weaponType: 'vatreno oružje',
    ammunitionCount: '0',
    financialStatus: 'lošeg imovnog stanja',
    admittedGuilt: 'da',
    remorseful: 'da',
    injuryCausedByWeapon: 'ne',
    fineAmount: '100,00€',
    securityMeasure: 'Privremeno oduzimanje oružja',
    violatedArticles: 'čl. 403 st. 2, čl. 15, čl. 42',
    sentence: '150',
    similarity: 85.0,
  },
  {
    id: { timestamp: 1625313600000, date: 1625313600000 },
    caseId: '3',
    caseNumber: 'K 150/2015',
    judge: 'Željka Jovović',
    defendant: 'F. G.',
    criminalOffense: 'nedozvoljeno držanje oružja',
    court: 'Osnovni sud u Podgorici',
    date: '2015-06-15',
    previouslyConvicted: 'neosuđivan',
    forSameOffense: 'da',
    illegallyPossessesWeapon: 'da',
    location: 'Danilovgrad',
    weapon: 'oružja',
    weaponType: 'vatreno oružje',
    ammunitionCount: '10',
    financialStatus: 'dobrog imovnog stanja',
    admittedGuilt: 'ne',
    remorseful: 'ne',
    injuryCausedByWeapon: 'ne',
    fineAmount: '0,00€',
    securityMeasure: 'Oduzimanje oružja',
    violatedArticles: 'čl. 403 st. 1, čl. 10a st. 2, čl. 14',
    sentence: '180',
    similarity: 78.3,
  },
  {
    id: { timestamp: 1625400000000, date: 1625400000000 },
    caseId: '4',
    caseNumber: 'K 160/2015',
    judge: 'Ivan Marković',
    defendant: 'H. I., J. K.',
    criminalOffense: 'nedozvoljeno držanje eksplozivnih materija',
    court: 'Osnovni sud u Beranama',
    date: '2015-07-01',
    previouslyConvicted: 'neosuđivan',
    forSameOffense: 'ne',
    illegallyPossessesWeapon: 'da',
    location: 'Berane',
    weapon: 'eksplozivne materije',
    weaponType: 'eksploziv',
    ammunitionCount: '0',
    financialStatus: 'srednjeg imovnog stanja',
    admittedGuilt: 'da',
    remorseful: 'da',
    injuryCausedByWeapon: 'ne',
    fineAmount: '60,00€',
    securityMeasure: 'Zabrana pristupa skladištima',
    violatedArticles: 'čl. 403 st. 2, čl. 5, čl. 14, čl. 229',
    sentence: '100',
    similarity: 88.9,
  },
  {
    id: { timestamp: 1625486400000, date: 1625486400000 },
    caseId: '5',
    caseNumber: 'K 170/2015',
    judge: 'Milena Vuković',
    defendant: 'L. M.',
    criminalOffense: 'nedozvoljeno držanje oružja i eksplozivnih materija',
    court: 'Osnovni sud u Podgorici',
    date: '2015-07-10',
    previouslyConvicted: 'neosuđivan',
    forSameOffense: 'da',
    illegallyPossessesWeapon: 'da',
    location: 'Podgorica',
    weapon: 'pištolj',
    weaponType: 'vatreno oružje',
    ammunitionCount: '3',
    financialStatus: 'srednjeg imovnog stanja',
    admittedGuilt: 'da',
    remorseful: 'ne',
    injuryCausedByWeapon: 'ne',
    fineAmount: '70,00€',
    securityMeasure: 'Privremeno oduzimanje oružja',
    violatedArticles: 'čl. 403 st. 1, čl. 13 st. 1, čl. 41, čl. 374',
    sentence: '110',
    similarity: 94.2,
  },
];
