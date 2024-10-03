trigger CreateTaskOpportunity on Opportunity (after insert, after update ) {
    List<Task> Tasks = new List<Task>();
    for(Opportunity opp: Trigger.new){
        if(opp.StageName =='Closed Won'){
            Tasks.Add(New Task(Subject='Customer need support they smash the all errors',ActivityDate=Date.today()+8,WhatId=opp.Id,OwnerId=opp.OwnerId));
        }
    }
    if(Tasks.size()>0)Insert Tasks;
    
}