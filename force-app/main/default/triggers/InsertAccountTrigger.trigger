trigger InsertAccountTrigger on Account (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert||Trigger.isupdate)){
        for(Account ac:Trigger.new){
            ac.Name='Bheem';
            ac.Rating ='cold';
            ac.Phone ='9787542317';
            ac.Active__c ='Yes';
            
            
               
        }
    }

}