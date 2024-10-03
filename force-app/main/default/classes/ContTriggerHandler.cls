public class ContTriggerHandler {
    Public Static void updateCountOfContacts(List<Contact> conlist){
        Set<Id> accountIdSet = new Set<Id>();
        for(Contact con : conlist){
            accountIdSet.add(con.AccountId);
          }
        afterContactUpdate(accountIdSet);
   }
    public static void afterContactUpdate(Set<id> accountId){
        List<Account> accounts = [SELECT id,name, Count_of_Contacts__c, (SELECT id FROM Contacts) FROM Account Where ID IN :accountId];
        for(Account acc : accounts){
            acc.Count_of_Contacts__c = acc.Contacts.size();
        }
        update accounts;      
    }

}