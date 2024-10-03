trigger RelatedContactandLeadTrigger on Contact (after insert,after update) {
    if(Trigger.isafter&&(Trigger.isinsert || Trigger.isupdate)){
        List<Lead> leads = new List<Lead>();
        for(Integer counter=1; counter<=5;counter++){
            for(Contact con : Trigger.new){
                Lead ld = new Lead();
                ld.Salutation ='Mr';
                ld.FirstName ='Jharkhand';
                ld.LastName ='Kohli';
                ld.Phone ='9848336975';
                ld.Fax ='45684';
                ld.Email ='kohli@gmail.com';
                 leads.add(ld);
                
                Insert ld;
                
                
            }
        }
    }

}