trigger CreateCaseTrigger on Account (after insert,after update) {
    if(Trigger.isafter && (Trigger.isinsert || Trigger.isupdate)){
        List<Case> listCase = new List<Case>();
        for(integer counter =1; counter<=7;counter++){
            for(Account acc : Trigger.New){
                Case cs = new Case();
                cs.Type ='Mechanical';
                cs.Status ='Working';
                cs.Origin ='Web';
                cs.accountid = acc.id;
                 
                
            }
        }
    }

}