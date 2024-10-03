trigger HiringManagerFeildUpTrigger on Hiring_Manager__c (before insert ,before update) {
    if(Trigger.isbefore && Trigger.isinsert || Trigger.isupdate){
        for(Hiring_Manager__c hm : Trigger.New){
            hm.Name ='Akanksha';
            hm.Contact_Number__c ='9705415787';
            hm.Email__c ='akanksha@gmail.com';
            
            Insert hm;
        }
     }

}