trigger AccountFeildUpTrigger on Account (before insert,before update) {
    if(Trigger.isbefore && (Trigger.isinsert || Trigger.isupdate)){
        for(Account a : Trigger.New){
            a.Name ='Mahan';
            a.fax ='524263';
            a.Phone ='6305844818';
            a.Rating ='cold';
        }
    }

}