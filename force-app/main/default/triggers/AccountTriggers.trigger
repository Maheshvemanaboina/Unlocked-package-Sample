trigger AccountTriggers on Account (After Insert,Before Delete,After Update) {
    If(trigger.Isafter){
        If(trigger.Isinsert){
            Accounttriggerhandler.afterInsertTrigger(Trigger.new);
            
        }
    }
    If(trigger.IsBefore){
        If(trigger.IsDelete){
           Accounttriggerhandler.beforeDelete(Trigger.oldMap);
        }
    }
    If(trigger.isAfter){
        If(trigger.isUpdate){
            Accounttriggerhandler.updatingOwnerIds(Trigger.newmap,Trigger.oldmap);
           
        }
    }

}