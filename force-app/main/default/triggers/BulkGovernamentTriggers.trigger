trigger BulkGovernamentTriggers on Governament__c (before insert,before update) {
    if(Trigger.isbefore && (Trigger.isinsert||Trigger.isupdate)){
        List<Governament__c> governaments = new List<Governament__c>();
        for(integer counter=1;counter<=7;counter++){
            for(Governament__c gv : Trigger.new){
                gv.Name ='Ramanna';
                gv.Annual_Revenue__c=5000000;
                gv.Government_Email__c='ramanna@gmail.com';
                gv.Cheif_Minister__c ='Madhu';
                governaments.add(gv);
                
                Insert gv;
            }
        }
    }
}