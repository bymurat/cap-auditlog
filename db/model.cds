namespace db;

using {
    cuid,
    managed,
    temporal,
    Currency
} from '@sap/cds/common';


entity Orders : cuid, managed {
    companyName     : String(40);
    orderDate       : Date;
    shipCountry     : String;
    businessPartner : Association to one BusinessPartner;
    items           : Composition of many Items
                          on items.order = $self;
}

entity Items {
    key ID       : String(40);
        name     : String;
        price    : Decimal;
        currency : Currency;
        quantity : Integer;
        order    : Association to Orders;
}

entity BusinessPartner : managed {
    key ID      : String(10);
        name    : String;
        surname : String;

}
