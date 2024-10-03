trigger AddErrorLead on Lead (before insert,before update) {
    if(Trigger.isbefore&&(Trigger.isinsert||Trigger.isupdate)){
        for(Lead ld : Trigger.new){
            if(ld.Title ==''||ld.Title== null){
                ld.Title.AddError('Please select the title value');
                if(ld.Website==''||ld.Website== null){
                ld.Website.AddError('Please select the website name');
                    if(ld.Email==''||ld.Email== null){
                        ld.Email.AddError('Select the email');
                    }
                    
                }
                    
            }
        }
    }

}