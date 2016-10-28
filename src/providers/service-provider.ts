import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';



/*
  Generated class for the ServiceProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class ServiceProvider {

      api : string = 'http://localhost:82/api/api/';

  constructor(public http: Http) {}
      getData() {
            return this.http.get(this.api + 'apiRecupera.php').map(res=>res.json())
      }

}
