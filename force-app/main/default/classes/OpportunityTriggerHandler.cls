public class OpportunityTriggerHandler {
    public static void insertOpp(List<Opportunity> oppList){
        for(Opportunity op : oppList){
            if(op.Amount!= null||op.Amount<100000){
               op.Description ='Hot Opportunity' ;
            }
        }
       }
    
    
    

}