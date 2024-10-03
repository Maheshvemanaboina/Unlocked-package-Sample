trigger InsertContactsTrigger on Contact (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert||Trigger.isupdate)){
        for(Contact cn:Trigger.new){
            cn.FirstName ='Khan';
            cn.LastName ='Mammutty';
            cn.Title ='M';
            cn.Phone ='9894756987';
        }
    }

}