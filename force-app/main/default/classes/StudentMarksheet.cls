public class StudentMarksheet {

    public void showMarksheetUsingDatatype(){
        string firstName = 'Aiko';
        string lastName = 'Celik';
        string mathematics = 'A';
        decimal english = 90.5;
        integer chemistry = 95;
        system.debug('my first name  ' + firstName);
        system.debug('my last name  ' + lastName);
        system.debug('my mathematics grade is:  ' + mathematics);
        system.debug('my english grade is:  ' + english);
        system.debug('my chemistry grade is:  ' + chemistry);
    }
    public void showMarksheetUsingObject(){
        object firstName= 'Aiko';
        object lastName= 'Celik';
        object mathematics= 'A+';
        object english= 90.5;
        object chemistry= 95;
        system.debug(firstName+ ' '+lastName+ '` s grades are '+mathematics+' '+english+' '+chemistry);
    }
}



