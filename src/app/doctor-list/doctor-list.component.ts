import { Component, OnInit } from '@angular/core';
import { Observable } from "rxjs";
import { Doctor } from '../doctor';
import { DoctorService} from '../doctor.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-doctor-list',
  templateUrl: './doctor-list.component.html',
  styleUrls: ['./doctor-list.component.css']
})
export class DoctorListComponent implements OnInit {

  doctors:Observable<Doctor[]>;
  constructor(private doctorService:DoctorService,private router:Router) { }

  ngOnInit(): void {
    this.reloadData();
  }
  reloadData(){
    this.doctors=this.doctorService.getList();
  }
  deletedoctor(doctorid:number){
    this.doctorService.deletedoctor(doctorid)
    .subscribe(
      data=>{
        console.log(data);
        this.reloadData();
      },
      error=>console.log(error));
  }

}
