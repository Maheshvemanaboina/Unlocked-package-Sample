public class ContactTriggerHandlers {
    Public static void insertcontact(List<Contact> conlist){
        for(contact con : conlist){
            if(con.LeadSource =='Public Reactions'||con.Active__c == true){
               con.Level__c ='Tertiary';
                
            }
        }
    }

}