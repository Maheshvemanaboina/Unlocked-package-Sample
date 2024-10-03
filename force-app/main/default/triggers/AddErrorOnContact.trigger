trigger AddErrorOnContact on Contact (before insert) {
    if(Trigger.isbefore && Trigger.isinsert){
        for(Contact cont : Trigger.new){
            if(cont.Phone == ''||cont.Phone == null){
               cont.Phone.AddError('Please select the phone number');
            }
            else if(cont.Fax == '' || cont.Fax == null){
                cont.Fax.AddError('please select the fax');
            }
        }
    }

}