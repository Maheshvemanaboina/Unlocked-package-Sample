trigger PositionTrigger on Position__c (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        for(Position__c pos : Trigger.new){
            pos.ContactNumber__c ='6035844818';
            pos.Expairy_Date__c =System.today();
            pos.Minimum_Pay__c = 550000;
            pos.Maximum_Pay__c = 750000;
            pos.HR_Email_Id__c ='nandhitha@gmail.com';
        }
    }

}