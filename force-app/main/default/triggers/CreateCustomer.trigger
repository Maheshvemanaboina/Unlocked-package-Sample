trigger CreateCustomer on Customer__c (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert||Trigger.isupdate)){
        for(integer counter=1;counter <=7;counter++){
            Customer__c cu = new customer__c();
            cu.Name ='Pandu';
            cu.Region_Name__c ='china';
            cu.Region_Manager_Name__c ='Infosys';
        }
    }

}