trigger ContactTrigger on Contact (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        for(Contact con : Trigger.new){
           con.FirstName ='Bmw';
            con.LastName ='Audi';
            con.Phone ='7758435278';
            con.Fax ='546846';
            Insert con;
           
            }
        }
    }