import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

import { ServiceProvider } from '../../providers/service-provider';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage{

      users : any[];

      constructor(public navCtrl: NavController, public service : ServiceProvider) {
        this.getDados();//inicio da requisição
      }

      getDados() {
      //retorno de Dados
      this.service.getData()
            .subscribe(
                  data=> this.users = data,
                  err=> console.log(err)
            );
      }
}
