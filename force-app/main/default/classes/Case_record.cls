public class Case_record {
    public void CreateMethod(){
        List<Case> NewCase = new List<Case>();
        For(Integer i=1; i<=15; i++){
            Case cs = New Case();
            cs.Origin ='Web';
            cs.Subject ='This is the assignment task';
            cs.Case_Email__c ='Mohana@gmail.com';
            cs.Description ='This is the very important case we can resolve any kind of issue immediatly';
            cs.SuppliedEmail ='maheshvemanaboina07@gmail.com';
            cs.SuppliedCompany ='Coreflex Solution Inc';
            cs.SuppliedName ='Mahesh';
            cs.Status ='New';
            insert cs;
            NewCase.Add(cs);
            
        }
    }

}