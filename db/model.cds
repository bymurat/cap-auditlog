namespace cap.auditlog.germancourse;

using {
    cuid,
    managed,
    temporal,
    sap,
    Country
} from '@sap/cds/common';

type Pronoun : Association to Pronouns;

@description : 'Preferred gender pronoun list'
define entity Pronouns : sap.common.CodeList {
    key code : String(2) @(title : 'Pronoun Code');
}

@description : 'Student list includes sensitive/personal data'
define entity Students : cuid, managed {
    pronoun     : Pronoun;
    internalID  : Integer;
    name        : String not null;
    lastname    : String not null;
    birthdate   : Date;
    nationality : Country;
    phonenumber : String;
    email       : String 
        @assert.format : '^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$' 
        not null;
}

