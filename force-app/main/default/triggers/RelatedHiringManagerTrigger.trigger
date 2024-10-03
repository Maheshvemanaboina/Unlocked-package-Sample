trigger RelatedHiringManagerTrigger on Hiring_Manager__c (after insert,after update) {
    if(Trigger.isafter&&(Trigger.isinsert || Trigger.isupdate)){
        List<Candidate__c> listcandidate = new List<Candidate__c>();
        for(integer counter=1; counter<=4;counter++){
            for(Hiring_Manager__c hm : Trigger.new){
                Candidate__c cd = new Candidate__c();
                cd.Name ='Akhila';
                cd.College_Name__c ='Biits';
                cd.Candidate_Roll_Number__c ='875469';
                cd.Email__c ='akhila@gmail.com';
                cd.Fee__c =50000;
                cd.Hiring_Manager__c = hm.id;
                listcandidate.add(cd);
                
                Insert cd;
            }
        } 
        
        
    }

}