trigger CreateTaskOnAccount on Account (after insert,after update) {
    List<Task> lsttasks =new List<Task>();
    for(Account acc:Trigger.new){
        if(acc.Type=='Prospect'){
            lsttasks.Add(New Task(Subject='adding the task',ActivityDate=Date.today()+2,WhatId=acc.Id,OwnerId=acc.OwnerId));
            
        }
    }
    If(lsttasks.size()>0){
        Insert lsttasks;
    }
}