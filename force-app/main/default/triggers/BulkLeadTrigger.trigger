trigger BulkLeadTrigger on Lead (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert || Trigger.isupdate)){
        List<Lead> listleads = new List<Lead>();
        for(integer counter=1;counter<=3;counter++){
            for(Lead ls : Trigger.new){
                ls.FirstName ='White';
                ls.LastName ='Angeloo';
                ls.Company ='deegree';
                ls.Fax ='456123';
                ls.Title ='Vishyam';
                listleads.add(ls);
                
                
            }
        }
    }

}