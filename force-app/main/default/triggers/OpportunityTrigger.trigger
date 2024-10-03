trigger OpportunityTrigger on Opportunity (before insert,before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            OpportunityTriggerHandler.insertOpp(Trigger.new);
        }
        
    }
       if(Trigger.isbefore){
           if(Trigger.Isupdate){
       
            }
        
}
}