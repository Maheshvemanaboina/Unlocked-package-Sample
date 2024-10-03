public class Create_customobject {
    public void newObject(){
        List<Hiring_Manager__c> hm = new List<Hiring_Manager__c>();
        For(integer i=1; i<=10; i++){
            Hiring_Manager__c hrc = new Hiring_Manager__c();
            hrc.Name ='Mrunali';
            hrc.Contact_Number__c ='970541678';
            hrc.Email__c ='Mrunali.cfs@gmail.com';
            insert hrc;
            hm.add(hrc);
            System.debug('print the '+hrc);
        }
    }

}