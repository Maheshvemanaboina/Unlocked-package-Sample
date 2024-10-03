trigger RelatedContactAndOpportunity on Contact (after insert,after update) {
    if(Trigger.isafter &&(Trigger.isinsert||Trigger.isupdate)){
        List<Opportunity> opplist = new List<Opportunity>();
        for(Integer counter=1;counter<=7;counter++){
            for(Contact co : Trigger.new){
                Opportunity opp = new Opportunity();
                opp.Name = 'SFDC';
                opp.StageName ='Closed Won';
                opp.Type = 'New Customer';
                opp.CloseDate = System.today();
                opp.Contactid = co.id;
                opplist.Add(opp);
                
                
                Insert opp;
            }
        }
    }

}