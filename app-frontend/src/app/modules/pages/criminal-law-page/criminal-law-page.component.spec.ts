import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CriminalLawPageComponent } from './criminal-law-page.component';

describe('CriminalLawPageComponent', () => {
  let component: CriminalLawPageComponent;
  let fixture: ComponentFixture<CriminalLawPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CriminalLawPageComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CriminalLawPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
