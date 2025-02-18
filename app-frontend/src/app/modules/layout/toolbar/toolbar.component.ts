import { Component, Input, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../auth/auth.service';
import { HttpErrorResponse } from '@angular/common/http';
import { CbrService } from '../../pages/cbr.service';

@Component({
  selector: 'app-toolbar',
  templateUrl: './toolbar.component.html',
  styleUrl: './toolbar.component.css',
  standalone: false
})
export class ToolbarComponent implements OnInit {

  @Input()
  color!: string;
  role!: string | null;

  caseNames: string[] = [];

  constructor(private authService: AuthService,
    private router: Router,
    private cbrService: CbrService) { }

  ngOnInit(): void {
    this.authService.userState$.subscribe((result) => {
      this.role = result;
      this.getCaseNames();
    });

    
  }

  getCaseNames(): void {
    this.cbrService.getAllCaseNames().subscribe((cases: string[]) => {
      this.caseNames = cases;
    });
  }

  navigateHome() {
    this.router.navigate(['/home']);
  }

  logout() {
    this.authService.logout().subscribe({
      next: () => {
        localStorage.removeItem('user');
        this.authService.setUser();
        this.router.navigate(['login']);
      },
      error: (error) => {
        if (error instanceof HttpErrorResponse) {
          localStorage.removeItem('user');
          this.authService.setUser();
          this.router.navigate(['login']);
        }
      },
    });
  }

}
