public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description is ' + lengthOfStr);

        String capsSessionDescription = sessionDescription.toUpperCase();
        system.debug('In CAPS --> ' + capsSessionDescription);

        boolean apexContains = sessionDescription.contains('apex');
        system.debug('contains apex??????? ' + apexContains);

        
        boolean apexContains2 = sessionDescription.contains('Apex');
        system.debug('contains Apex???? ' + apexContains2);

        
        boolean apexContains22 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains ignore case Apex??? ' + apexContains22);
        

        boolean sfContains = sessionDescription.contains('salesforce');
        system.debug('contains salesforce??????????? ' + sfContains);

    }



}
