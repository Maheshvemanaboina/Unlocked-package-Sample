trigger RelatedCandidateTriggers on Candidate__c (After insert,after update) {
    if(Trigger.isafter&&(Trigger.isinsert || Trigger.isupdate)){
        List<Student__c> liststudents = new List<Student__c>();
        for(integer counter=1; counter<=7;counter++){
            for(Candidate__c cd : Trigger.New){
                Student__c std = new Student__c();
                std.Name ='Meghana';
                std.Candidate_Roll_Number__c =1638549;
                std.Email__c ='meghana@gmail.com';
                std.Fee__c = 888000;
                std.Phone__c ='8854159646';
                std.Candidate__c = cd.id;
                liststudents.add(std);
                
                Insert std;
                
                
            }
            
        }
    }

}