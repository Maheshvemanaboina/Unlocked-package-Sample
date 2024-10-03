trigger ContactTriggerUpdate on Contact (after INSERT, after DELETE, Before Insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            ContactTriggerHandler.afterInsert(Trigger.new);
        }
        else if(Trigger.isDelete){
            ContactTriggerHandler.afterDelete(Trigger.old);
        }
    }
}