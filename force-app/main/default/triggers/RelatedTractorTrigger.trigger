trigger RelatedTractorTrigger on Tractor__c (after insert,after update) {
    if(Trigger.isafter&&(Trigger.isinsert||Trigger.isupdate)){
        List<Student__c> lststudents = new List<Student__c>();
        for(Integer counter=1; counter<=9; counter++){
            for(Tractor__c trc : Trigger.new){
                Student__c std = new Student__c();
                std.name ='Manikanta';
                std.Email__c ='manikanata@gmail.com';
                std.Fee__c = 78945;
                std.Tractor__c = trc.id;
                lststudents.add(std);
                
                Insert std;
            }
        }
    }

}