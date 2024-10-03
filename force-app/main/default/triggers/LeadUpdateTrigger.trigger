trigger LeadUpdateTrigger on Lead (before insert,before update){
    if(Trigger.isBefore && (Trigger.isupdate || Trigger.isinsert)){
        List<Lead> lstleads =[Select id,FirstName,Rating From Lead Where Industry ='Banking'];
        for(Lead ld : Trigger.New){
            ld.Rating = 'Hot';
            
            Update lstleads;
           
        }
    }

}