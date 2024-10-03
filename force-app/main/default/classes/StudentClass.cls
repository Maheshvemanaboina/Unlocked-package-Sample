public class StudentClass {
    String StdName ='Daya';
    string coursename ='Sfdc developer';
    integer age =25;
    integer fee =25000;
    Decimal gst = 5.05; 
    Decimal totalAmount =age*fee;
    Decimal total =  totalAmount-gst;   
    Public StudentClass(){
        System.debug('total'    +total);
    }

}