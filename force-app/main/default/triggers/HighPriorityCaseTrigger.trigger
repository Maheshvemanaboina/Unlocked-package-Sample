trigger HighPriorityCaseTrigger on High_Priority_Case__c (before insert,before update) {
    if(Trigger.isbefore && (Trigger.isinsert ||Trigger.isupdate)){
        for(High_Priority_Case__c hpc : Trigger.New){
            hpc.Owner__c ='Karri';
            hpc.Id__c = 54687456;
            hpc.Email__c ='Chandu@gmail.com';
            hpc.Phone__c ='7899877899';
            hpc.Begining_Date__c = System.today();
            hpc.Endining_Date__c = System.today().Adddays(5);
        }
        
        
    }

}