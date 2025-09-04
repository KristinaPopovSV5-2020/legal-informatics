import { Component } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import {
  CaseDetails,
  CaseDTO,
  CbrService,
  RecommendationsDTO,
} from '../cbr.service';
import { CaseAttributes } from '../../../dto/CaseAttributes';
import { MatSnackBar } from '@angular/material/snack-bar';

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
  similarCases: CaseDetails[] = [];

  constructor(
    private fb: FormBuilder,
    private cbrService: CbrService,
    private snackBar: MatSnackBar
  ) {
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
      weapons: this.fb.array([], [Validators.required]),
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
      weaponType: ['/', Validators.required],
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
      this.fetchSimilarCases(caseDTO);
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
          this.snackBar.open('Slučaj je uspešno sačuvan!', 'Zatvori', {
            duration: 3000,
            horizontalPosition: 'center',
            verticalPosition: 'top',
            panelClass: ['snackbar-success'],
          });
        },
        error: (err) => {
          console.error('Error saving case:', err);
          this.isLoading = false;
          const errorMessage = err?.error || 'Nepoznata greška';
          this.snackBar.open(`${errorMessage}`, 'Zatvori', {
            duration: 5000,
            horizontalPosition: 'center',
            verticalPosition: 'top',
            panelClass: ['snackbar-error'],
          });
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

    let weaponType = this.weaponArticles?.controls
      .map((w) => w.value.weaponType)
      .filter(Boolean)
      .join('')
      .split('')
      .filter((v, i, a) => a.indexOf(v) === i)
      .sort()
      .join('');

    if (!weaponType) {
      weaponType = '/';
    }

    const caseData: CaseDetails = {
      caseNumber: formValues.name,
      judge: '',
      defendant: formValues.defendant,
      criminalOffense: formValues.criminalOffense,
      court: formValues.court,
      date: formValues.date,
      previouslyConvicted: formValues.previouslyConvicted,
      forSameOffense:
        'neosuđivan, protiv kojeg se ne vodi postupak za drugo krivično djelo.',
      illegallyPossessesWeapon: formValues.unauthorizedPossessionOfAWeapon,
      location: formValues.methodOfWeaponDiscovery,
      weapon:
        this.newCaseForm.value.weapons?.map((w) => w.weapon).join(', ') || '',
      ammunitionCount:
        this.newCaseForm.value.weapons
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
      next: (cases: string[]) => {
        this.similarCases = cases.map((c) => {
          const parts = c.split('->');
          const jsonPart = parts[0].trim();
          const caseSim = parts[1].trim();

          const item = JSON.parse(jsonPart);
          item.similarity = caseSim;
          return item;
        });

        this.isLoadingSimilarity = false;
      },
      error: (err) => {
        console.error('Greška pri dobavljanju sličnih slučajeva:', err);
        this.isLoadingSimilarity = false;
      },
    });
  }

  get lawArticles(): FormArray {
    return this.newCaseForm?.get('lawArticles') as FormArray;
  }

  get weaponArticles(): FormArray {
    return this.newCaseForm?.get('weapons') as FormArray;
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
