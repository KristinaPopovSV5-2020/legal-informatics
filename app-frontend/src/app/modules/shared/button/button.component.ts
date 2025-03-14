import { Component, EventEmitter, Input, Output } from '@angular/core';

@Component({
  selector: 'app-button',
  templateUrl: './button.component.html',
  styleUrl: './button.component.css',
  standalone: false
})
export class ButtonComponent {
  @Input() buttonText: string = ''; 
  @Input() buttonStyle: string = ''; 
  
  @Output() onClick = new EventEmitter<MouseEvent>()

  handleClick(event: MouseEvent | undefined) {
    this.onClick.emit(event); 
  }

}
