public class Greetings {
    public string language = '';
    public string GreetingHello(){
        string greet = '';
        if(language == 'Hindi'){
            greet = 'Namaste';
        } else if(language == 'Turkish'){
            greet = 'Merhaba';
        } else if(language == 'Russian'){
            greet = 'Privet';
        }
        else {
            greet = 'Helloooo';
        }

        return greet;

    }
}
