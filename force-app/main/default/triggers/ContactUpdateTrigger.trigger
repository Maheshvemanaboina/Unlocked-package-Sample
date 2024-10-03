trigger ContactUpdateTrigger on Contact (before insert,after insert) {
    If(trigger.Isbefore){
        If(trigger.Isinsert){
            ContactTriggerHandlers.insertcontact(Trigger.new);
        }
    }

}