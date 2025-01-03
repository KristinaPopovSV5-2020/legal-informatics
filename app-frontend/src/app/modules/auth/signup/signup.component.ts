import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatDialog } from '@angular/material/dialog';
import { AuthService } from '../auth.service';
import { User } from '../model/user';
import { HttpErrorResponse } from '@angular/common/http';
import { validateRePassword } from './custom-validator/custom-validator';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.css',
  standalone: false
})
export class SignupComponent implements OnInit{
  signupForm !: FormGroup;
  hide = true;
  hasError = false;


  hasErrorUser = false;



  constructor(private formBuilder: FormBuilder,
    public dialog: MatDialog,
    private authService: AuthService,){
    }

  ngOnInit(){
    this.signupForm = this.formBuilder.group({
      name: [
        '',
        [
        Validators.required,
        Validators.minLength(3),
        Validators.maxLength(20),
        Validators.pattern('[a-zA-Z]+'),

      ],
    ],
      surname: [
        '',
        [
        Validators.required,
        Validators.minLength(3),
        Validators.maxLength(20),
        Validators.pattern('[a-zA-Z]+'),

      ],
    ],
      username: [
        '',
        [
        Validators.required,
        Validators.minLength(3),
        Validators.maxLength(20),
        Validators.pattern('[a-zA-Z]+'),

      ],
      ],
      password:['',
          [
            Validators.required,
            Validators.minLength(8),
          ],
      ],
      confirmpsw:['',
          [
            Validators.required,
            validateRePassword,
          ],
      ],
      skinType:['',
        [
          Validators.required,
        ],
      ],

    });
    
  }

  signup() : void{ 
    if (this.signupForm.valid){
      const user :User = {
        name : (this.signupForm.value as User).name,
        surname : (this.signupForm.value as User).surname,
        username : (this.signupForm.value as User).username,
        password:(this.signupForm.value as User).password,
  
      }
      console.log(user)
      this.authService.register(user).subscribe({
        next: (user) =>{
          alert("Successfully registered");
        },
        error: (error) => {
          if (error instanceof HttpErrorResponse){
            console.log(error.error)
            this.hasErrorUser = true;
          }
        }, 
  
      })
      
      
    }else{
      this.hasError = true;
    }


}

}