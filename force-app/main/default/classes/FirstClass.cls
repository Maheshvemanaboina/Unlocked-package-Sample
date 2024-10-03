public class FirstClass {
    public static void assignmentClass(){
        List<Account> accList = new List<Account>();
        For(Integer i=0; i<=2; i++){
            Account ac = new Account();
            ac.Name = 'testFirstClass'+i;
            ac.AccountNumber= '234567887';
            ac.CurrencyIsoCode ='';
            ac.EMail__c ='sfdc4567@gmail.com';
            accList.add(ac);
            System.debug('Printing the names' +ac);
        }
        If(!accList.IsEmpty()){
            Insert accList; 
        }
        
        List<Contact> Conlist = new List<Contact>();
        System.debug('accList'+ accList);
        For(Account ac :accList){
            For(Integer i=0; i<=2; i++){
                Contact con = new contact();
                con.LastName= 'CFS'+ ac.name;
                con.FirstName ='BNGLR'+i;
                con.Birth_date__c =System.today();
                con.AccountId = ac.Id;
                Conlist.add(con);
                System.debug('Create contacts'+con);
            }
        }
        If(!Conlist.IsEmpty()){
            Insert Conlist;
        }
    } 
}