public class Dml2_Assign {
    /*public static void insert_dml(){
        Account acc = new Account();
        acc.name = 'Aikokul Celik';
        acc.type = 'Assignment';
        acc.phone = '0987654321';
        insert acc;
        System.debug('Account name is ' + acc.name + ', Account type is ' + acc.type + ', Phone number is ' + acc.Phone);
    }
    public static void updating_dml(){
        Account acc = new Account();
        acc.Name = 'Istanbul LTD';
        System.debug('Account created ' + acc.Name);

        insert acc;
        system.debug('Account updated ' + acc.Name);

    } */
    public static void createBulkContacts(){
        List<Contact> listCon = new List<Contact>();
            
        Contact con1 = new Contact();
        con1.FirstName = 'Mark';
        con1.LastName = 'Ruffalo';
        listCon.add(con1);

        Contact con2 = new Contact();
        con2.FirstName = 'Mark';
        con2.LastName = 'Ruffalo';
        listCon.add(con2);

        Contact con3 = new Contact();
        con3.FirstName = 'Chris';
        con3.LastName = 'Hemsworth';
        listCon.add(con3);

        Contact con4 = new Contact();
        con4.FirstName = 'Scarlett';
        con4.LastName = 'Johansson';
        listCon.add(con4);

        Contact con5 = new Contact();
        con5.FirstName = 'Scarlett';
        con5.LastName = 'Johansson';
        listCon.add(con5);

        insert listCon;
    }
    public static List<Contact> searchForContacts(String lastname){
        List<Contact> listCon = [select id, firstName, lastName from contact where lastName = :lastName];

        System.debug('Contact list = ' +listCon);
        return listCon;
    }
    
}
