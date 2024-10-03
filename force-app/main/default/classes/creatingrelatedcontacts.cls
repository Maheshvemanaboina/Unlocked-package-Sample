public class creatingrelatedcontacts {
    Public static void creatingContacts(){
        List<Account> acclist = new List<Account>();
        Account ac = new Account();
        ac.Name ='Fromcreatingrelatedcontactsmnstyuifds';
        ac.Rating ='LOW';
        ac.Type ='Prospect';
        Insert ac;
        
        List<Contact> conlist = new List<Contact>();
        Contact con = new contact();
        con.LastName ='Sfdcsdf';
        con.Email ='dfghj@gmail.com';
        con.AccountId = ac.Id;
        conlist.Add(con);
        
        Contact Cont = new Contact();
        Cont.LastName ='Benny';
        Cont.FirstName ='Mark';
        Cont.AccountId = ac.Id;
        conlist.Add(Cont);
        if(conlist.IsEmpty()){
            Insert conlist;
        }
    }
    
}