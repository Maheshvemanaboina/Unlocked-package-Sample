trigger RelatedGovernamentTrigger on Governament__c (after insert,after update) {
    if(Trigger.isafter &&(Trigger.isinsert || Trigger.isupdate)){
        for(integer counter=1; counter<=6; counter++){
            List<Position__c> position = new List<Position__c>();
            for(Governament__c govt : Trigger.New){
                Position__c pos = new Position__c();
                pos.Name ='Malli';
                pos.ContactNumber__c ='4563212235';
                pos.Open_Date__c =System.today();
                pos.Expairy_Date__c =System.today().adddays(27);
                pos.Maximum_Pay__c =211111;
                pos.Minimum_Pay__c =11111;
                pos.Governament__c= govt.id;
                position.add(pos);
                Insert pos;
                
            }
        }
    }

}