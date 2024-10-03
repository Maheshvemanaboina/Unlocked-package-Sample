public class My_FirstClass {
  public string StudentName ='Mahesh';
    Public string Organization ='Salesforce';
    public integer Age = 67;
    public integer Salary = 50000;
    
    public My_FirstClass(){
        System.debug('StudentName' + StudentName);
        System.debug('Age' + Age);
        System.debug('Salary'+ Salary);
        System.debug('Organization' + Organization);
    }
}