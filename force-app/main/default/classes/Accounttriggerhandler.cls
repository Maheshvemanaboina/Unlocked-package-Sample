public class Accounttriggerhandler {
    Public static void afterInsertTrigger(List<Account> newAccount){
       List<contact> lstcontacts = new List<contact>();
        For(Account acc :newAccount) {
          contact cont = new contact();
            cont.LastName =acc.Name+'cont';
            cont.Birth_date__c =System.today();
            cont.AccountId = acc.Id;
            lstcontacts.add(cont);
        }
        If(!lstcontacts.IsEmpty()){
            Insert lstcontacts;
        }
    }
    Public static void beforeDelete(Map<Id,Account> Oldacc){
        Map<Id, Account> mapOfAccounts = new Map<Id, Account> ([Select Id, (Select Id From Contacts) 
                                                                From Account 
                                                                Where Id IN :Oldacc.Keyset()]);
        
         for(Account acc : Oldacc.values()) {
            if(!mapOfAccounts.get(acc.Id).Contacts.isEmpty()) {
                acc.addError('Account with associated Contact(s) can not be deleted.');
            }
        }
 
    }
    Public static void updatingOwnerIds(Map<Id,Account> mapNewAccounts, Map<Id,Account> OldAccounts){
        
        Set<Id> accid = new Set<Id>();
        For(Account acc : mapNewAccounts.values()){
            If(acc.OwnerId != OldAccounts.get(acc.Id).OwnerId){
                accid.add(acc.Id);
                
            }
        }
        List<Contact> lstcont = new List<Contact>();
          lstcont = [Select id, LastName,Birth_date__c, AccountId, Account.OwnerId from contact 
                                                                                  where AccountId IN:accid];
        
        For(Contact con :lstcont){
            con.ownerId =con.Account.OwnerId;
           
        }
        If(!lstcont.IsEmpty()){
            Update lstcont;
        }
    } 
    
        
           
 }