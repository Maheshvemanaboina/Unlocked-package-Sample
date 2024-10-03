trigger DeleteAccountTrigger on Account (before delete) {
    if(Trigger.isbefore&&Trigger.isdelete){
        for(Account acc : Trigger.old){
            if(acc.Active__c =='Yes'){
                acc.AddError('you connot delete the active account');
            }
        }
    }

}