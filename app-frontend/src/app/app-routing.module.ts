import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './modules/auth/login/login.component';
import { SignupComponent } from './modules/auth/signup/signup.component';
import { CasePageComponent } from './modules/pages/case-page/case-page.component';
import { CriminalLawPageComponent } from './modules/pages/criminal-law-page/criminal-law-page.component';
import { WeaponLawPageComponent } from './modules/pages/weapon-law-page/weapon-law-page.component';

const routes: Routes = [
    { path: '', redirectTo: '/krivicni', pathMatch: 'full'},
    {path: 'login', component: LoginComponent},
    {path: 'signup', component: SignupComponent},
    {path:'krivicni', component:CriminalLawPageComponent},
    {path:'oruzje', component: WeaponLawPageComponent},
    {path:'case/:id', component:CasePageComponent}
  ];



@NgModule({
    imports: [RouterModule.forRoot(routes, { anchorScrolling: 'enabled', scrollPositionRestoration: 'enabled' })],
    exports: [RouterModule]
  })
  export class AppRoutingModule { }


