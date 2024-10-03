trigger AddErrorJcb on Jcb__c (before insert,before update) {
    If(Trigger.isbefore&&(Trigger.isinsert||Trigger.isupdate)){
        for(Jcb__c jb:Trigger.new){
            if(jb.Brand_Name__c ==''||jb.Brand_Name__c ==null){
                jb.Brand_Name__c.AddError('Please fill the required feilds');
                if(jb.Driver_Number__c==''||jb.Driver_Number__c==null){
                    jb.Driver_Number__c.AddError('Please select the driver number');
                    
                }
                
            }
        }
    }

}