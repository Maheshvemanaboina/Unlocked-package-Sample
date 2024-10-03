global class BatchAssignment implements Database.Batchable <Sobject>{
    Public Database.Querylocator Start(Database.BatchableContext bc){
        return Database.getQuerylocator('Select id,AccountId, Account.EMail__c,Email  From Contact where Email = null and Birth_date__c !=null and Account.EMail__c != null ');
    }
    Public void execute(Database.BatchableContext bc, List<Contact> contactLstRecods){
        for(Contact cont :contactLstRecods){ 
            cont.Email = cont.Account.Email__c;
        }
        Update contactLstRecods;
        
    }
    Public void finish(Database.BatchableContext bc){
        
    }

}