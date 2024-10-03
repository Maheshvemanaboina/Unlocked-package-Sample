public class Employee {
    String CompanyName ='Core Flex Solutions Inc';
    Integer noofLaptops =20;
    Decimal LaptopDiscount =1.50;
    Decimal LaptopPrice =40000;
    Decimal TotalLaptopPrice =noofLaptops*LaptopPrice;
    Decimal LapTotal = TotalLaptopPrice-LaptopDiscount;
    Integer noofPhone = 10;
    Decimal PhonePrice = 10000;
    Decimal PhoneDiscount = 2.10;
    Decimal TotalPhonePrice = noofPhone*PhonePrice;
    Decimal TotalPhoneAmount= TotalPhonePrice-PhoneDiscount;
    Decimal TotalAmountPay= LapTotal+TotalPhoneAmount;
    
    Public Employee(){
        System.debug('LapTotal'+LapTotal);
        System.debug('TotalPhoneAmount'+TotalPhoneAmount);
        System.debug('TotalAmountPay'  +TotalAmountPay);
    }

}