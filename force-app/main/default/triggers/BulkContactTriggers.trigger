trigger BulkContactTriggers on Contact (after insert,after update) {
    if(Trigger.isafter &&(Trigger.isinsert || Trigger.isupdate)){
        for(integer counter=1; counter<=6; counter++){
            for(Contact con : Trigger.New){
                con.FirstName ='Lavs';
                con.LastName ='Mumm';
                con.Title ='Tortion';
                con.AssistantPhone ='9705416787';
                con.Fax ='5555';
                
                Insert con;
            }
        }
    } 

}