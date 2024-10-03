trigger UserTrigger on User (after insert, after update) {
    if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            UserTriggerHandler.addAdminToPublicGroup(Trigger.new);
        }
        
        if(Trigger.isUpdate) {
            UserTriggerHandler.updatePublicGroupUsers(Trigger.new, Trigger.oldMap);
        }
    }
}