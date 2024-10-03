public class CreatingBulkContacts {
    public static void bulkRecords(Integer Creatingcontacts){
      List<Contact> conList = new List<Contact>();
        For(Integer i=0;i<=Creatingcontacts; i++){
            Contact con = new Contact();
            con.FirstName ='FirsName'+i;
            con.LastName ='Lastname'+i;
            con.Birth_date__c =System.today();
            con.Phone = '8765345456';
            conList.add(con);
        }
        If(!conList.IsEmpty()){
            Insert conList;
        }
    }

}