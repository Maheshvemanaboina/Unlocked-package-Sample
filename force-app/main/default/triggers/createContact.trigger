trigger createContact on Account( after insert,after update ){
    if(Trigger.isafter &&(Trigger.isinsert ||Trigger.isupdate)){
        List<Contact> contacts=new List<Contact>();
        for(integer counter =1;counter<=5; counter++){
        for(Account a: Trigger.New){
            if(a.type=='Prospect'){         
                Contact cont =new Contact();
                cont.LastName=a.Name;
                cont.Phone=a.Phone;
                cont.AccountId=a.id;
                contacts.add(cont);
                
                Insert cont;
            }
        }
        
        }
    }
    
}