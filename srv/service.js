const cds = require('@sap/cds')
const auditlog = require('@sap/audit-logging').v2( { logToConsole : true } , connectToLog)

module.exports = cds.service.impl (function(){
  this.before ('UPDATE','Students', auditLogCreate)
})

function connectToLog (err, auditlogging){
    if(err){
        console.error(err);
    }else{
        return auditlogging;
    }
}

async function auditLogCreate (req) {
    console.log(req.data)
    console.log(req.params)
    console.log(req.query)
    console.log(req.path)
    console.log(req.user)
    
const message = 
    auditlog.update({ type: 'accessed-object-type', id: { key: 'value' } })
            .attribute({ name: 'attr-0' })
            .attribute({ name: 'attr-1' })
            .attribute({ name: 'attr-2', old: 'old value', new: 'new value' })
            .dataSubject({ type: 'data-subject-type', id: { key: 'value' }, role: 'role' })
            .tenant('tenantId')
            .by('John Doe');
 
// message.logPrepare(function (err) {


// });
}