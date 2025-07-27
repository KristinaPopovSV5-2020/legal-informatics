import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CbrService } from '../cbr.service';

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
  sentences: string[] = [];

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
      let li = 'ne';
      let hi = 'ne';
      if (this.caseForm.value.lowIncome === 'da') {
        li = 'da';
      } else if (this.caseForm.value.lowIncome === 'ne') {
        hi = 'da';
      }
      this.cbrService
        .reasonByRules({
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
        })
        .subscribe({
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
    }
  }

  addNewCase() {}

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
