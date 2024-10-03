trigger CandidateTrigger on Candidate__c (before insert,before update) {
    if(Trigger.isBefore &&  (Trigger.isinsert || Trigger.isupdate)){
        for(Candidate__c cd : Trigger.New){
            cd.Candidate_Roll_Number__c ='1526872';
            cd.Fee__c =52000;
            cd.Email__c ='chandhini@gmail.com';
            cd.Joining__c =System.today();
            cd.College_Name__c ='Narayana';
            cd.Percentage__c = 99;
            cd.Phone__c ='7005845637';
        }
    }

}