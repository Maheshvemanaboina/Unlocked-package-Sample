public class UserTriggerHandler {
    private static Group adminGroup = [SELECT Id FROM Group WHERE DeveloperName = 'Admins' AND Type = 'Regular' LIMIT 1];
    private static Profile adminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
    
    public static void addAdminToPublicGroup(List<User> newUsers) {
        // Get Id of Public group for Admins
        //Group adminGroup = [SELECT Id FROM Group WHERE DeveloperName = 'Admins' AND Type = 'Regular' LIMIT 1];
        
        // Perform operation of adding Admin users to the group only when Group is present in salesforce
        if(adminGroup != NULL) {
            List<GroupMember> groupMembers = new List<GroupMember>();
            
            // Get admin proifle and check for all users,
            // if user profile id is same as the admin profile id AND user is active then only create a new group member
            //Profile adminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
            for(User user : newUsers) {
                if(user.ProfileId == adminProfile.Id && user.IsActive == true) {
                    groupMembers.add(new GroupMember(GroupId = adminGroup.Id, UserOrGroupId = user.Id));
                }
            }
            insert groupMembers;
        }
    }
    
    public static void updatePublicGroupUsers(List<User> newUsers, Map<Id,User> oldUsersMap) {
        if(adminGroup != NULL) {
            List<GroupMember> newGroupMembers = new List<GroupMember>();
            List<GroupMember> existingGroupMembers = [SELECT Id, GroupId, UserOrGroupId FROM GroupMember WHERE Group.Id = :adminGroup.Id];
            List<GroupMember> membersToBeDeleted = new List<GroupMember>();
            Set<Id> usersAsGroupMembers = new Set<Id>();
            
            for(User user : newUsers) {
                // When profile of an active user is changed
                if(user.ProfileId != oldUsersMap.get(user.Id).ProfileId && user.IsActive == true) {
                    // If new profile is System Administrator then create a new group member for admin
                    if(user.ProfileId == adminProfile.Id) {
                        newGroupMembers.add(new GroupMember(GroupId = adminGroup.Id, UserOrGroupId = user.Id));
                    }                    
                    // If new profile is Not System Administrator and old profile was System Administrator then delete the existing group member if present
                    if(oldUsersMap.get(user.Id).ProfileId == adminProfile.Id) {
                        usersAsGroupMembers.add(user.Id);
                    }
                }
                
                else {
                    // When user with System Administrator profile is marked active or inactive
                    if(user.IsActive != oldUsersMap.get(user.Id).IsActive && user.ProfileId == adminProfile.Id) {
                        // If user is marked active from inactive then create a new group member for admin
                        if(user.IsActive == true) {
                            newGroupMembers.add(new GroupMember(GroupId = adminGroup.Id, UserOrGroupId = user.Id));
                        }
                        // If user is marked inactive from active, then delete the existing group member if present
                        if(user.IsActive == false) {
                            usersAsGroupMembers.add(user.Id);
                        }
                    }
                }
            }
            insert newGroupMembers;
            
            for(GroupMember member : existingGroupMembers) {
                if(usersAsGroupMembers.contains(member.UserOrGroupId)) {
                    membersToBeDeleted.add(member);
                }
            }
            delete membersToBeDeleted;
        }
    }
}