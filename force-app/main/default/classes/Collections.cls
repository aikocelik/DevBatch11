public class Collections {
    public static string listAssignment(integer i) {
        list<string> LstMonth = new list<string>();

        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        string output_month = '';

        integer sizeOfMonth = LstMonth.size();

        if(i<=sizeOfMonth && i>=1){
            output_month = LstMonth[i-1];
        } else {
            output_month = 'Not a valid month.';
        }
        return output_month;
    }
}
