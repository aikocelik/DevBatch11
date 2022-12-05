public class SoqlDemo2 {
    public static void childToParentSoql1() {
        List<Contact> listContacts = [Select id, name, account.name, account.industry from contact where account.industry = 'Energy'];
        System.debug(listContacts);
        for (Contact eachContact : listContacts) {
            String accName = eachContact.Account.Name;
            System.debug('contact name = ' + eachContact.Name + ', its acc name is ' + accName);
            
        }
    }


    public static void soqlParentToChild_1() {
        List<Account> listAccOp = [select id, name, annualrevenue, type, (select name, amount from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachAcc : listAccOp) {
            System.debug('acc name => ' + eachAcc.Name + ', annual revenue => ' + eachAcc.AnnualRevenue);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            for (opportunity eachOpp : listOpp) {
                System.debug('-- opp name => ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }

        }
    }
}
