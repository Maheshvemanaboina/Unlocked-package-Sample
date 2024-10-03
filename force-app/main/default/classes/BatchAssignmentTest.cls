@isTest
private class BatchAssignmentTest {
    private static testmethod void testBatch(){
        //Load Test data
        List<Contact> listcont = new List<Contact>();
        for(Integer i=0; i<=200;i++){
          listcont.add(new contact(lastname ='SFDC',Email='sfdc@gmail.com'));
            
        }
           Insert listcont;
        //Perform the test data
        Test.startTest();
        BatchAssignment batchJob = new BatchAssignment();
        Id batchId = Database.executeBatch(batchJob);
        Test.stopTest();
        
    }

}