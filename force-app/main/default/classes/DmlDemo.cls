public class DmlDemo {
    public static void dmlInsertDemo_stnObj(){
        // create a new account record using apex code (DML)
        //1. create new instance
        Account acc = new Account();
        //2. set values to fields
        acc.name = 'SoftInnovas';
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
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        insert acc;

        //1.set new field value
        acc.Name = 'Salesforce Inc';
        // now come UPDATE DML
        update acc;
    }
}
