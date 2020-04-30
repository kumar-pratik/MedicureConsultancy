import { Component, OnInit } from '@angular/core';
import { Doctor } from '../doctor';
import {DoctorService} from '../doctor.service';
import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

  doctor:Doctor=new Doctor();
  submitted=false;
  constructor(private doctorService:DoctorService,private router:Router) { }

  ngOnInit(): void {
  }
  
  newDoctor(): void {
    this.submitted = false;
    this.doctor= new Doctor();
    }
    save() {
      this.doctorService.newDoctor(this.doctor)
      .subscribe(data => console.log(data), error => console.log(error));
      this.doctor= new Doctor();
      this.gotoList();
      }
      
      onSubmit() {
      this.submitted = true;
      this.save();
      }
      
      gotoList() {
      this.router.navigate(['doclist']);
      }

}
