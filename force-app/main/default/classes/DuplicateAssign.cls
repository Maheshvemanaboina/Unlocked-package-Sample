global class DuplicateAssign implements Database.Batchable <Sobject>{
    Public Database.Querylocator Start(Database.BatchableContext bc){
        return Database.getQuerylocator('Select id, Name, EMail__c,(Select id, LastName,Email, FirstName From Contacts) From Account');
    }
    Public void execute(Database.BatchableContext bc, List<Account> UpdateEmail){
        for(Account acc :UpdateEmail){
            acc.Email__c ='';
        }
        List<Contact> Cont = new List<Contact>();
        for(Account acc : UpdateEmail){
        for(Contact con :Cont){
            con.Email = acc.Email__c;
        }
         }
        If(!Cont.IsEmpty()){
            Update Cont;
        }
        
         
    }
    Public void finish(Database.BatchableContext bc){
        
    }

}