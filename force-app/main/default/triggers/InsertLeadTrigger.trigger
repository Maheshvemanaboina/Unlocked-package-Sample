trigger InsertLeadTrigger on Lead (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert||Trigger.isupdate)){
        for(Lead l:Trigger.new){
            l.FirstName ='Manmadhudu';
            l.LastName ='Jogi';
            l.Title ='Brokarism';
            l.AnnualRevenue =9090800;
            l.Email ='manmadhudu@gmail.com';
        }
    }

}