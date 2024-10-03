trigger Acc_Opty_Creation on Account (after insert) {
    List <Account> accList = Trigger.New;
  
    User u= [Select id from user where alias ='integ'];
    List<Opportunity> opty= New List<Opportunity>();
    List<Opportunity> opty2= New List <Opportunity>();
    
     
    for (Account a : accList){
        Opportunity op = new Opportunity();
        op.Name= a.Name+'_Opty';
        op.CloseDate=System.today()+15;
        op.StageName='Prospecting';
        op.AccountId= a.Id;
        op.OwnerId=u.Id;
        opty.add(op); 
    }
    insert opty;
    
    for (Account a : accList){
        Opportunity Op2 = new Opportunity();
        op2.Name= a.Name+'_Opty';
        op2.CloseDate=System.today()+20;
        op2.StageName='Needs Analysis';
        op2.AccountId= a.Id;
        op2.OwnerId=u.Id;
        opty2.add(op2); 
   }
   insert opty2;
}