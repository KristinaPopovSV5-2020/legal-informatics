import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-link',
  templateUrl: './link.component.html',
  styleUrl: './link.component.css',
  standalone: false
})
export class LinkComponent {
  
  @Input()
  text!: string;
  @Input()
  source!: string;

}
