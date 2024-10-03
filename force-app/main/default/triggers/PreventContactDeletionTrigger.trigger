trigger PreventContactDeletionTrigger on Account (before delete) {
    if(Trigger.isbefore && Trigger.isdelete){
        List<Contact> lstcontacts = [Select id,FirstName,LastName,Title, accountid From Contact Where Accountid IN:Trigger.oldmap.Keyset() ];
        If(! lstcontacts.isEmpty()){
            for(Contact con:lstcontacts){
                con.AccountId=Null;
                
            }
           Update lstcontacts; 
        }
    }
}