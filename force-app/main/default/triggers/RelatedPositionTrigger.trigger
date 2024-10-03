trigger RelatedPositionTrigger on Position__c (after insert,after update) {
    if(Trigger.isafter &&(Trigger.isinsert || Trigger.isupdate)){
        for(integer counter=1;counter<=9;counter++){
            List<Governament__c> govt =new List<Governament__c>();
            for(Position__c pos :Trigger.new){
                Governament__c gv = new Governament__c();
                gv.Name ='elementry';
                gv.Government_Email__c ='madhusudhan@gmail.com';
                gv.Annual_Revenue__c =4555;
                gv.Cheif_Minister__c ='Raghu';
                gv.Position__c=pos.id;
                govt.add(gv);
                Insert gv;
            }
        }
    }

}