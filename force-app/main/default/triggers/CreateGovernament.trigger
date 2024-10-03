trigger CreateGovernament on Governament__c (before insert ,before update) {
    if(Trigger.isbefore && (Trigger.isinsert || Trigger.isupdate)){
         List<Governament__c>governaments =new List<Governament__c>();
        for(integer counter=1;counter<=10;counter++){
        for(Governament__c g :Trigger.New){
            g.Name ='gernallisam';
            g.Annual_Revenue__c =559845664;
            g.Cheif_Minister__c ='';
            g.Government_Email__c ='chandra@gmail.com';
            
        }
        }
    }

}