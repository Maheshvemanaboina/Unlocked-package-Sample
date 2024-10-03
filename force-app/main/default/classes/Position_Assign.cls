public class Position_Assign {
    public void newRecord(){
        Position__c pst = new Position__c();
        pst.Name ='Test';
        pst.ContactNumber__c ='6950345342';
        pst.Maximum_Pay__c = 5000000;
        pst.Minimum_Pay__c = 500;
        pst.Expairy_Date__c = System.today();
        pst.HR_email_id__c = 'sdfghjjhgf@gmail.com';
        Insert pst;
        System.debug('Print the position element::::::'+pst);
        
    }

}