public class UpdateAccounts {
    Public static void accountUpdation(){
    List<Account> accList =[SELECT ID, Name, EMail__c from Account Where Email__c = null Limit 5];
    For(Account acc : accList){
        acc.EMail__c='coreflex23@gmail.com';
        System.debug('accList'+accList);
    }
        If(!accList.IsEmpty()){
            Update accList;
        }
         List<Contact> Conlist = new List<Contact>();
         For(Account acc: accList){
           List<Contact> UpaterelatedContacts =[select id, firstname, lastname, Birth_date__c, Email,AccountId from contact where AccountId =:acc.Id];
            For(Contact con : Conlist){
                con.Email = acc.EMail__c;
                con.AccountId = acc.Id;
            System.debug('Conlist'+Conlist);
            }
        }
         If(!Conlist.IsEmpty()){
            Update Conlist;
        }
        
    }
        
       
    }