trigger RelatedJcbTrigger on Jcb__c (After insert,After update) {
    If(Trigger.isafter&&(Trigger.isinsert||Trigger.isupdate)){
        for(integer counter=1;counter<=8;counter++){
            List<Tractor__c> Track = New List<Tractor__c>();
            for(Jcb__c j : Trigger.New) {
                Tractor__c tr = New Tractor__c();
                tr.Name ='@Sai';
                tr.Tractor_Brand__c ='Mahindra';
                tr.Owner_Email__c ='Mahi@gmail.com';
                tr.Jcb__c = j.id;
                Track.add(tr);
                
                Insert tr;
                
            }
        }
    }

}