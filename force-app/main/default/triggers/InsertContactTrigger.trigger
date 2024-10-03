trigger InsertContactTrigger on Contact (before insert,before update ) {
    if(Trigger.isbefore&&(Trigger.isinsert||Trigger.isupdate)){
        for(Contact con : Trigger.New){
            con.FirstName ='Jadeja';
            con.LastName ='Raina';
            con.Phone ='9705416787';
            con.fax ='555';
            
        }
    }
        

}