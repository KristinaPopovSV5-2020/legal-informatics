import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SimilarCaseComponent } from './similar-case.component';

describe('SimilarCaseComponent', () => {
  let component: SimilarCaseComponent;
  let fixture: ComponentFixture<SimilarCaseComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SimilarCaseComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SimilarCaseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
