public class My_Class2 {
    public string channelName ='Andhra';
    public Integer amount =455555;
    public Date today =System.today();
    public boolean isactive = true;
    
    public My_Class2(){
        arakuvalley();
    }
    public void arakuvalley(){
        channelname ='Andhra Pradesh';
        System.debug('channelname'  + channelname);
        hyderabad();
    }
    public void hyderabad(){
        amount = 500000;
        isactive = true;
      System.debug('amount' + amount);
        System.debug('isactive'  + isactive);
    }

}