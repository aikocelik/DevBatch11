@isTest 
public class DmlDemoTest {
    @isTest 
    private static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<account> listAcc = [Select id, name from account where name = 'SoftInnovas'];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);

    }
    @isTest 
    private static void dmlInsert4Test() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();
        
        List<contact> listContact = [select id, LastName from Contact where lastname = 'Biden'];
        System.assertEquals(1, listContact.size());  
    }
}