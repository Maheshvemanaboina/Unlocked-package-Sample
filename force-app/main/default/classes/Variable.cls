public class Variable {
    Public integer age;
    public Decimal amount;
    Public string name = 'Mujni';
    Public Boolean Isactive;
    
    Public Variable(){
        age = 89;
        amount=56666;
        Isactive = True;
        System.debug('age' + age);
        System.debug('amount' +amount);
        System.debug('name ' +name);
    }

}