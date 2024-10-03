trigger UpdateAccountRecords on Account (before update) {
    if(Trigger.isbefore&&Trigger.isupdate){
        for(Account ac:Trigger.new){
            ac.Name = 'Ronaldo';
        }
    }

}