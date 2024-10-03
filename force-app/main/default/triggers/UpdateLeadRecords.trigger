trigger UpdateLeadRecords on Lead (before update) {
    if(Trigger.isbefore&&Trigger.isupdate){
        for(Lead ld:Trigger.new){
            ld.FirstName ='Godavari';
            ld.LastName ='Krishna';
            ld.Title ='Sita';
            ld.Email ='godavari@gmail.com';
        }
    }

}