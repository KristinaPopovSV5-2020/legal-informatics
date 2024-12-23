import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-toolbar',
  templateUrl: './toolbar.component.html',
  styleUrl: './toolbar.component.css',
  standalone: false
})
export class ToolbarComponent {

  @Input()
  color!: string;
  constructor(
    private router: Router) {}

  navigateHome() {
    this.router.navigate(['/home']);
  }

}
