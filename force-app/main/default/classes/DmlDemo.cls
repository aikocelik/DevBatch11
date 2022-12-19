public class DmlDemo {
    public static void dmlInsertDemo_stnObj(){
        // create a new account record using apex code (DML)
        //1. create new instance
        Account acc = new Account();
        //2. set values to fields
        acc.name = 'SoftInnovas';
        acc.Phone = '2345678';
        acc.Type = 'Hot';
        System.debug('NOT inserted ' + acc);
        //dml
        insert acc;
        System.debug('INSERTED ' + acc);
    }
    public static void dmlInsertDemo_cstObj(){
        //create new instance
        Salesforce_project__c spNew = new Salesforce_project__c ();
        // set field values
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up.';

        //dml
        insert spNew;


    }
    public static void dmlUpdateDemo_1(){
        //insert record...
        
        Account acc = new account();
        //2. set values to fields
        acc.Name = 'SoftInnovas';
        system.debug('NOT inserted ' + acc);
        //dml.
        insert acc; //booom
        system.debug('INSERTED ' + acc); 
    }
    public static void dmlUpdateDemo_3(){
        Account acc = [select name from account where name = 'Softinnovas' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        system.debug('updated acc ' + acc);
    }
    public static void dmlInsertDemo_4(){
        Account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;
        System.debug('contact record: ' + cnt);

    }
    public static void dmlInsertDemo_5(){
        Account acc = [select id, name from Account where name = 'Istanbul LTD' limit 1];
        Contact cnt = new Contact();
        cnt.LastName = 'Celik';
        cnt.AccountId = acc.id;
        insert cnt;
        system.debug('new contact record ' + cnt);

    }
    public static void dmlInsertDemo_6(){
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn APEX dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 6);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        System.debug('st is ' + stNew);
    }
    public static void dmlInsertMultiple_right(){
        List<Account> listAcc = new List<Account>();
        Account acc1 = new Account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        Account acc3 = new Account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }
}
