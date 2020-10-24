namespace cap.auditlog.germancourse;

using {
    cuid,
    managed,
    temporal,
    sap,
    Country
} from '@sap/cds/common';

type Pronoun : Association to Pronouns;

@Core.Description : 'Preferred gender pronoun list'
define entity Pronouns : sap.common.CodeList {
    key code : String(2) @(title : 'Pronoun Code');
}

@Core.Description : 'Student list includes sensitive/personal data'
define entity Students : cuid, managed {
    pronoun     : Pronoun;
    internalID  : Integer;
    name        : String;
    lastname    : String;
    birthdate   : Date;
    nationality : Country;
    phonenumber : String;
    email       : String;
}

