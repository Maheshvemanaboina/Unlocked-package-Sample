public class First_Collection {
    public First_Collection(){
    List<String> customerDetails = new List<String>();
      customerDetails.Add('Vinay');
      customerDetails.Add('Gk');
      customerDetails.Add('Salesforce');
        System.debug('Calculate custumer::::::::::::'+customerDetails.Size());
        customerDetails.Add(1 , 'Mahesh');
            System.debug('Show the list names::::::::::'+customerDetails.size());
        customerDetails.set(0,'Sai');
        System.debug('Replace the element:::::::::::'+customerDetails);
         If(customerDetails.IsEmpty()){
            System.debug('Collection is empty ');
        }
        Else
            customerDetails.Remove(2);
        System.debug('Remove the value:::::::::::::::'+customerDetails);
            System.debug('Collection is not Empty');
        List<String> CusInfo = new List<String>();
        CusInfo=customerDetails.clone();
        System.debug('Clone the values :::::::::::'+CusInfo);
        
    }
 }