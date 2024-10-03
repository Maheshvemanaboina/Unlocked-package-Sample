@isTest
Public class ContactTriggerHandlersTest {
    @isTest
    Public static void insertcontactTest(){
        //Test data
        List<Contact> contList = new List<Contact>();
        for(Integer i=0;i<=10;i++){
            for(contact cont : contList){
                cont.LastName ='Mahesh';
                cont.LeadSource ='Web';
                cont.Active__c = true;
                cont.Level__c ='Tertiary';
                contList.add(cont);
            }
            Test.startTest();
            insert contList;
            Test.stopTest();
           
            List<Contact> contUpdateList =[Select id, LastName,Active__c,Level__c, LeadSource from Contact];
            System.assertEquals('Tertiary',contUpdateList[0].Level__c);
        }
    }
    
}