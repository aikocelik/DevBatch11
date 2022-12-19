public  class group6Work {
    public static void listOpp() {
        List<Opportunity> opps = [select id, name,accountId from Opportunity where accountId = null];
        system.debug(opps);
    }
    //Orgunuzda herhangi bir opportunity ile ilgisi olmayan accountları getiriniz.
    public static void accWoR() {
        List<Account> listAcc = [select id, name from Account where Id NOT IN (select AccountId from Opportunity)];
        System.debug(listAcc);
    }
    public static void createOpp(){
        Opportunity opp1 = new Opportunity();
        opp1.Name = 'Opportunity Deneme';
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = date.newInstance(2022, 2, 2);
        insert opp1;

        System.debug(opp1);
    }
    
    //'Oppoprtunity Deneme 1' şeklinde 5 adet  opportunity  daha oluşturun.
    public static void CreateOpp_1() {
        List<Opportunity> opp3 = new list<Opportunity>();

        for (integer i = 1; i < 6; i++) {
        Opportunity opp2 = new Opportunity();
        opp2.Name = 'Mozart' + i;
        opp2.StageName = 'Prospecting';
        opp2.CloseDate = date.newInstance(2022, 2, 2);

        opp3.add(opp2);
        }
        insert opp3;

    }
    public static void createOpp(integer n, id accId) {
        Account acc = [select id from Account where id= :accId];
        List<Opportunity> listOpps = new List<Opportunity>();
        if (n<=0) {
            System.debug('Enter a number greater than or equal to 1');
        } else {
            for (Integer i = 1; i <= n; i++) {
                Opportunity opp1 = new Opportunity();
                opp1.name = 'Opportunity Deneme 1.' + i;
                opp1.StageName = 'Prospecting';
                opp1.CloseDate = date.today().addYears(3);
                opp1.AccountId = acc.id;  
                listOpps.add(opp1);
            }
            if (!listOpps.isEmpty()) {
                insert listOpps;
            }
            
        }
    }
    public static void deleteOpps() {
        List<Opportunity> listOpps = [select id, name from Opportunity where name like 'Opportunity Deneme 1.%'];
        delete listOpps;
    }
    //opplerin stagename alanına göre amount  max değerlerini gösterin
    public static void OppAmount() {
        List<AggregateResult>  maxAmount = [select stageNAme, max (amount) from opportunity group by stageName];
        for (AggregateResult eachAmount : maxAmount) {
            System.debug(eachAmount);
        }
        public static void OppMax() {
            List<Opportunity> OppList2 = [select id,]
        }
    }


}