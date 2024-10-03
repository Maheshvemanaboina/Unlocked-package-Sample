trigger AccountFeildTrigger on Account (before insert) {
    if(Trigger.isbefore && Trigger.isinsert){
    for(Account acc : Trigger.New){
        acc.Website ='www.cloudarc.com';
        acc.Ownership ='Public';
        acc.Rating ='Hot';
        acc.Type ='Prospect';
        acc.Industry ='Manufacturing';
        acc.AnnualRevenue = 590000;
        
        Insert acc;
    
    }
  } 

}