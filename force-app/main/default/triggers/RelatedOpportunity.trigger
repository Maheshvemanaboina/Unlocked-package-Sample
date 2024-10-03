trigger RelatedOpportunity on vendor__c (After insert) {
    if(Trigger.isafter & Trigger.isinsert){
        List<Opportunity> opplist = New List<Opportunity>();
        For(Vendor__c vd:Trigger.new){
            Opportunity oppt = New Opportunity();
            oppt.Name ='opp1';
            oppt.StageName ='Closed Won';
            oppt.Amount = 500000;
            oppt.CloseDate = System.today();
            oppt.Vendor__c = Vd.id;
            opplist.Add(oppt);
            
            Insert oppt;
            
            For(Vendor__c V: Trigger.new){
               Opportunity opp = New Opportunity();
                opp.Name ='opp2';
                opp.StageName ='Closed Lost';
                opp.Amount =300000;
                opp.CloseDate =System.today();
                opp.Vendor__c = V.id;
                opplist.Add(opp);
                
                Insert opp;
                
                For(Vendor__c Vr: Trigger.new){
                    Opportunity op = New Opportunity();
                    op.Name ='opp3';
                    op.StageName ='New';
                    op.Amount = 250000;
                    op.CloseDate = System.today();
                    op.Vendor__c = Vr.id;
                    opplist.Add(op);
                    
                    Insert op;
                    
                    For(Vendor__c Ve: Trigger.new){
                        Opportunity opr = New Opportunity();
                        opr.Name ='opp4';
                        opr.StageName ='Closed Won';
                        opr.Amount =150000;
                        opr.CloseDate = System.today();
                        opr.Vendor__c= Ve.id;
                        opplist.Add(opr);
                        
                        Insert opr;
                    }
                    
                }
            }
            
           
               
        }
    }

  }