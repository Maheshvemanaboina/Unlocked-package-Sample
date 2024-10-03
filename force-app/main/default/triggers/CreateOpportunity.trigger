trigger CreateOpportunity on Account (after insert,after update) {
    if(Trigger.isafter &&(Trigger.isinsert || Trigger.isupdate)){
        List<Opportunity> Opportunity = new List <Opportunity>();
        for(integer counter =1; counter<=5; counter++){
            for(Account acc : Trigger.New){
                Opportunity opp = new Opportunity();
                opp.Name ='Key';
                opp.StageName ='Qualification';
                opp.CloseDate = System.today();
                opp.Name ='acc.Name';
                opp.AccountId =acc.id;
                Opportunity.add(opp);
                
                
                Insert opp;
            }
        }
    }

}