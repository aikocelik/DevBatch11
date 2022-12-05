public class Calculator {
    public void welcomeMessage(){
        system.debug('welcome to apex calc');
    }

    public void printNewMessage(string msg){
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        string returnString = msg + '...OK cool';
        return returnString;
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
}
