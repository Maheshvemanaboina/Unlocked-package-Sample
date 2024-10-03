public class ContactTriggerHandler {
    public static void afterInsert(List<Contact> newConList) {
        Set<Id> accountNewIdSet = new Set<Id>();
        for(Contact con: newConList){
            accountNewIdSet.add(con.AccountId);   
        }
        afterContactUpdate(accountNewIdSet);
    }
    public static void afterDelete(List<Contact> oldConList){
        Set<Id> accountOldIdSet=new Set<Id>();
        for(Contact con: oldConList){
            accountOldIdSet.add(con.AccountId);   
        }
        afterContactUpdate(accountOldIdSet);
    }
      public static void onBeforeInsert(List<Contact> NewConList,List<Contact> oldConList){
          for(Contact con: newConList){
              con.Email = con.Account.Email__c;
          }
      }
    public static void afterContactUpdate(Set<id> accountId){
        List<Account> accounts = [SELECT id,name, Count_of_Contacts__c, (SELECT id FROM Contacts) FROM Account Where ID IN :accountId];
        for(Account acc : accounts){
            acc.Count_of_Contacts__c = acc.Contacts.size();
        }
        update accounts; 
    }
}