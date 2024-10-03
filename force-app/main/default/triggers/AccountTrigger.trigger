trigger AccountTrigger on Account (before insert,before update,before delete) {
    If(Trigger.isbefore &&(Trigger.isinsert||Trigger.isupdate)){
        For(Account acc : Trigger.New){
            if(acc.Industry ==''|| acc.Industry == null){
                acc.Industry.AddError('Please select the industry value');
                if(acc.Fax ==''|| acc.Fax == null){
                    acc.Fax.AddError('Please enter the fax number');
                    if(acc.Website ==''|| acc.Website == null){
                        acc.Website.AddError('Please enter the customer website name');
                    }
                    
                        
                }
               
            }
        }
    }

}