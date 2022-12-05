public class Candidates {
    
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;
    
    public Candidates(){
        countCandidates++;
    }

public void printCandidate(){
    System.debug('Name is ' + Name);
    System.debug('Gender is ' + Gender);
    System.debug('Company name is ' + CompanyName);

    }   
    public static void printCandidateInfo(){
        System.debug('company name is ' + CompanyName);
        //System.debug('name is ' + Name);
    }
    public static void name() {
        System.debug()
        
    }
}

