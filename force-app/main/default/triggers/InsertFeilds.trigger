trigger InsertFeilds on Account (before insert) {
    if(Trigger.isbefore && Trigger.isinsert){
        for(Account acc: Trigger.New){
            acc.Name ='Nizam';
            acc.Rating ='Hot';
            acc.Phone ='6305897454';
            acc.Description ='Last over 15 runs smashed by nijam';
        }
    }

}