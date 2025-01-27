import { ComponentFixture, TestBed } from '@angular/core/testing';

import { WeaponLawPageComponent } from './weapon-law-page.component';

describe('WeaponLawPageComponent', () => {
  let component: WeaponLawPageComponent;
  let fixture: ComponentFixture<WeaponLawPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [WeaponLawPageComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(WeaponLawPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
