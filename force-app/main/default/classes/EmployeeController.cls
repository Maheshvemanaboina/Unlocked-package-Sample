public with sharing class EmployeeController {
    @AuraEnabled(cacheable=true)
    public static List<Employee__c> createEmployee(Employee__c emp)
    {
        List<Employee__c> empList= new List<Employee__c>();
        Employee__c empData = new Employee__c();
        empData.Company_Name__c = emp.Company_Name__c;
        empData.Confirm_Email__c =emp.Confirm_Email__c;
        empData.Confirm_Employee_Identification_Number__c = emp.Confirm_Employee_Identification_Number__c;
        empData.Confirm_Employer_Identification_Number__c = emp.Confirm_Employer_Identification_Number__c;
        empData.Designation__c = emp.Designation__c;
        empData.Email__c = emp.Email__c;
        empData.Employee_Identification_Number__c = emp.Employee_Identification_Number__c;
        empData.Employer_Identification_Number__c = emp.Employer_Identification_Number__c;
        Insert emp;
        return empList;
    }
    @AuraEnabled(cacheable=true)
    public static void saveEmployee(string records){
        System.debug('records ' +records);
        Map<String,Object> deserializedJson = (Map<String,Object>) JSON.deserializeUntyped(records);
        Map<String,Object> personalData  = (Map<String,Object>) deserializedJson.get('allPersonalData');
        Map<String,Object> professionalData  = (Map<String,Object>) deserializedJson.get('allProfessionalData');
        Map<String,Object> addredssData  = (Map<String,Object>) deserializedJson.get('allAddressData');
        System.debug('personalData' +personalData);
        System.debug('professionalData' +professionalData);
        System.debug('addredssData' +addredssData);
        
    }
}