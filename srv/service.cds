using { cap.auditlog.germancourse as db } from '../db/model';

service GermanClass {
    entity Students as projection on db.Students;
}   

