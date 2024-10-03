public class NestedIf {
    Public NestedIf(){
        String examstatus ='Pass';
        If(examstatus =='Pass'){
            System.debug('Mahesh you have cleared first round assesment.wait for fourther rounds');
            String Round2examstatus ='Fail';
            If(Round2examstatus =='Fail'){
                System.debug('Congrats Mahesh You have cleared the second round. lets wait 3 round');
                String Round3examstatus ='Pass';
                If(Round3examstatus =='Fail'){
                    System.debug('we are happy to share with you,you have cleared final round interview . lets wait for offer letter');
                }
            }
        }
        else{
            System.debug('----------sdnjcsfkjedsj');
        
       }
       
    }

}