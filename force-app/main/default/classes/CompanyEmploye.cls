public class CompanyEmploye {
    String companyname ='infosys';
    Integer noofemployes =50;
    Decimal perhead = 150000;
    Decimal gst = 0.25;
    Decimal totalamount = noofemployes*perhead;
    Decimal gstamount =totalamount-gst;
    Public CompanyEmploye(){
        System.debug('totalamount' +totalamount);
        System.debug('gstamount' +gstamount);
    }

}