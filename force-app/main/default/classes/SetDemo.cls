public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('TOKYO');

        System.debug('cities are ' + cities);
    }
    public static void randomIntegerSet() {
        set<integer> setInt = new Set<integer> ();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);

        System.debug(setInt);

    }

    public static set<integer> setFromList(list<integer> intList) {
        set<integer> intSet = new set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
    public static set<string> capitalizeSet(set<string> setString) {
        set<string> capsSet = new set<string>();


        // iterate over each element of set
        //convert to uppercase
        //add in a newly created set
        for (string eachStr : setStr) {
            //eachStr-->each element one by one from tge SET

            string tempstring = eachString.toUpperCase();
            returnSet.add(tempstring);
        }

        return returnSet;
        
    }
}
