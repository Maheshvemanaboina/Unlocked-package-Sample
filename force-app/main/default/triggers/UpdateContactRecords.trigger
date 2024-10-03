trigger UpdateContactRecords on Contact (before update) {
    if(Trigger.isbefore&&Trigger.isupdate){
        for(Contact con : Trigger.new){
            con.FirstName ='Maharaj';
            con.LastName ='LalSingh';
            con.Title ='Ammer Khan';
            
           
        }
    }

}