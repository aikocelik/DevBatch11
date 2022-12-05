public class StringAssignment {

    public void StringMethod() {
        string Localstring = 'Thanks for the session on the string';
        system.debug(Localstring);

        integer length = Localstring.length();
        system.debug('The length of the LocalString is' + length);

        string capsLocalstring = Localstring.toUpperCase();
        system.debug('in CAPS -> ' + capsLocalstring);

        boolean sessionContains = Localstring.contains('session');
        system.debug('is the Localstring contains session? ' + sessionContains);

        boolean sessionsContains = Localstring.contains('sessions');
        system.debug('contains sessions? ' + sessionsContains);

        boolean sessionContains2 = Localstring.containsIgnoreCase('SESSION');
        system.debug('contains ignore case SESSION' + sessionContains2);
    }

}
