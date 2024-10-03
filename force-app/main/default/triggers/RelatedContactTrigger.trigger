trigger RelatedContactTrigger on Account (after insert ,after update) {
    if(Trigger.isafter && (Trigger.isinsert||Trigger.isupdate)){
        List<Contact> contact = new List<Contact>();
        for(integer counter =1;counter<=05;counter++){
            for(Account ac : Trigger.New){
                Contact con = new Contact();
                con.FirstName ='Vishayam';
                con.LastName ='srinuu';
                con.Phone ='3698521475';
                con.Email ='vishyam@gmail.com';
                con.Fax ='25863454';
                con.Description ='Enduku chadhuvuthunamo teliyatleduu em aithundho kuda teliyatledu emaina sare elagaina job kottali';
                con.Accountid =ac.id;
                contact.add(con);
                
                Insert con;
            }
                
        }
        
    }

}