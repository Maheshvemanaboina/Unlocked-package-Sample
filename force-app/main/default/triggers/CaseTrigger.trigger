trigger CaseTrigger on Case (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.Isinsert||Trigger.Isupdate)){
        for(Case csRecord : Trigger.New){
           csRecord.Type ='Mechanical';
            csRecord.Status ='Working';
            
            }
      }
        
       
            
  }