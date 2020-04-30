import { Component, OnInit } from '@angular/core';
import { Observable } from "rxjs";
import { Patient } from '../patient';
import { DoctorService} from '../doctor.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-patient-list',
  templateUrl: './patient-list.component.html',
  styleUrls: ['./patient-list.component.css']
})
export class PatientListComponent implements OnInit {

  patients:Observable<Patient[]>;
  constructor(private doctorService:DoctorService,private router:Router) { }

  ngOnInit(): void {
    this.reloadData();
  }
  reloadData(){
    this.patients=this.doctorService.getPatient();
  }
  deletepatient(patientId:number){
    this.doctorService.deletepatient(patientId)
    .subscribe(
      data=>{
        console.log(data);
        this.reloadData();
      },
      error=>console.log(error));
  }

}
