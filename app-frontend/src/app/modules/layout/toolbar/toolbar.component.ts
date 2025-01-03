import { Component, Input, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../auth/auth.service';
import { HttpErrorResponse } from '@angular/common/http';

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
  constructor(private authService: AuthService,
    private router: Router) {}

    ngOnInit(): void {
      this.authService.userState$.subscribe((result) => {
        this.role = result;
      });
    }

  navigateHome() {
    this.router.navigate(['/home']);
  }

  logout(){
    this.authService.logout().subscribe({
            next: (result) => {
              localStorage.removeItem('user');
              this.authService.setUser();
              this.router.navigate(['login']);
            },
            error: (error) => {
              if (error instanceof HttpErrorResponse) {
                console.log(error)
              }
            },
          });
  }

}
