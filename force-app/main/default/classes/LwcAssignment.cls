public class LwcAssignment {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppRecord() {
        List<Opportunity> listopp = [SELECT Id, Name, StageName, Leadsource, Amount, Description FROM Opportunity LIMIT 20];
        return listopp;
    }
}