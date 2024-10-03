trigger AccountWithContact on Account (after insert,after update) {
    if(Trigger.isafter&&(Trigger.isinsert||Trigger.isupdate)){
        List<Contact> conts = new List <Contact>();
        for(Account acc: Trigger.new){
            Contact con = new Contact();
            con.LastName ='acc.name';
            con.Phone ='9494144283';
            con.Accountid = acc.Id;
            conts.Add(con);
            
            Insert con;
            
        }
    }
 }