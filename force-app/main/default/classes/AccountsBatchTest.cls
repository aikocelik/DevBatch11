@isTest
public class AccountsBatchTest {
    @isTest
    private static void testBatch1() {
        List<account> listAcc = new List<account>();

        for (Integer i = 0; i < 900; i++) {
            Account a = new Account();
            a.Name = 'Pi account ' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 900);
        Test.stopTest();

        List<account> getAcc = [select id, description from Account];
        System.assert(getAcc[0].Description.contains('batch'));
    }
}