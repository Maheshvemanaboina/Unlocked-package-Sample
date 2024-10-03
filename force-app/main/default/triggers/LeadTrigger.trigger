trigger LeadTrigger on Lead (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert||Trigger.isUpdate)){
        for(Lead ldRecord : Trigger.new){
            if(ldRecord.Street ==''|| ldRecord.Street==null){
                ldRecord.Street.AddError('Please insert the street feild');
                if(ldRecord.City ==''|| ldRecord.Street==null){
                    ldRecord.City.AddError('please insert the City feild');
                    if(ldRecord.State ==''||ldRecord.State==null){
                        ldRecord.Street.AddError('please insert the state feild');
                        if(ldRecord.PostalCode==''||ldRecord.PostalCode==null){
                            ldRecord.PostalCode.AddError('pleas insert the postalcode');
                            
                            
                        }
                    }
                }
                
            }
                
        }
    }

}