@isTest
public class Calculator3Test {
    @isTest //method becomes test method
    public static void testMessage() {
        // we want to test our calculator class's methods.
        Calculator3.welcomeMessage();
        Calculator3.printNewMessage('this is from test method');
    }
    @isTest 
    public static void addTest1() {
        Integer i = 10;
        Integer j = 15;
        Integer sum1 = Calculator3.add(i, j);
        System.assertEquals(25, sum1);
        
    }
    @isTest 
    public static void addTest2() {
        
        Integer sum1 = Calculator3.add(10,15,25);
        System.assertEquals(50, sum1);
}
}