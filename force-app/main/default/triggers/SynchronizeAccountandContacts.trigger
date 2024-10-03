trigger SynchronizeAccountandContacts on Account (after update) {
    if(Trigger.isafter && Trigger.isupdate){
     List<Contact> listContacts = new List<Contact>();
        listContacts = [Select id ,FirstName, LastName, Phone, Fax, accountid From Contact where accountid In:Trigger.NewMap.KeySet()];
        if(! listContacts.isEmpty()){
            for(Contact con : listContacts){
                Account acc = Trigger.NewMap.Get(con.AccountId);
                con.Phone = acc.Phone;
                con.Fax = acc.Fax;
                
                Update listContacts;
            }
        }    
           
    }

}