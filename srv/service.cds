using { cap.auditlog.germancourse as db } from '../db/model';

service admin @(requires:'authenticated-user'){
    entity Students as projection on db.Students;
}   

service browse {
    @readonly entity Students as projection on db.Students excluding { createdBy, modifiedBy };
}
