trigger CustomerTrigger on Customer__c (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert &&Trigger.isupdate)){
        for(Customer__c cust : Trigger.New){
            if(cust.Region_Name__c !=''||cust.Region_Name__c !='Null'){
                if(cust.Region_Name__c =='Asias')
                    cust.Region_Manager_Name__c ='sudheer';
                else if(cust.Region_Name__c =='Japan')
                    cust.Region_Manager_Name__c ='Mukesh';
                else if(cust.Region_Name__c =='China')
                    cust.Region_Manager_Name__c ='Dong';
                else if(cust.Region_Name__c =='Americas')
                    cust.Region_Manager_Name__c ='Dani';
                else if(cust.Region_Name__c =='Australia')
                    cust.Region_Manager_Name__c='Pollard';
                else if(cust.Region_Name__c =='Europe')
                    cust.Region_Manager_Name__c ='Ashely';
                else if(cust.Region_Name__c =='Middle East')
                    cust.Region_Manager_Name__c ='Manish';
                
              
            }
        }
    }

}