using { db } from '../db/model';

service browse {

    entity Orders as projection on db.Orders;
    entity BusinessPartner as projection on db.BusinessPartner;

}