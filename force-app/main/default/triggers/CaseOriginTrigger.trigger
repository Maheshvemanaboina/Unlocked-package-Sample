trigger CaseOriginTrigger on Case (before insert,before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        for(Case c : Trigger.New){
            c.Origin ='Web';
            c.Status ='Escalated';
            c.Priority ='Medium';
         }
        
    }

}