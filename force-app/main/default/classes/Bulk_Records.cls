public class Bulk_Records {
    public Bulk_Records(){
    List<Account> Lstaccountrec = new List<Account>();
    For(integer i=1; i<=20; i++){
        Account acc = new Account();
        acc.Name = 'Abishek'+i;
        acc.Active__c = 'Yes';
        acc.AnnualRevenue = 50000;
        Lstaccountrec.Add(acc);
        System.debug('Created accounts'+acc);
 
    }
       Insert Lstaccountrec;
        
  }
    
}