trigger Lost_Opportunity_Follow_up on Opportunity (after insert, after update) {
    List<Task> Tasks = new List<Task>();
    for (Opportunity OOpty : trigger.new ) {
        if (OOpty.StageName == 'Closed Lost'){
            Tasks.add(new Task(Subject='Lost Opportunity Follow up AP', ActivityDate=Date.today()+10, WhatId=oOpty.Id,OwnerId=oOpty.OwnerId));
        }
    }
    if (Tasks.size()>0) insert Tasks;

}