public with sharing class RestApiOutboundCallout {

    public static HttpResponse getAnimals(){

        // Preparing Http Request
        HttpRequest request = new HttpRequest();

        // Setting Http Method for Request
        request.setMethod('GET');

        // Setting Endpoint URL for Target System
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');

        // NOTE: This Endpoint doesnt need User Authentication


        // STEP 4 
        // Make REST Callout
        Http http = new Http();
        HttpResponse response = http.send(request);


        // STEP 5 
        // Getting Http Response
        System.debug('Response Status ' + response.getStatus());
        System.debug('Response Status Code ' + response.getStatusCode());
        System.debug('Response Content/Body ' + response.getBody());
        

        // STEP 6
        // Parsing JSON Response
        // Condition check for Success response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();


            // Deserializing JSON String to Apex defined data types
            
            // JSON keys are always String

            // JSON value can be anything - String, Number, Boolean, Array, Nested JSON - for safeguard of code we use OBJECT - Generic data type of Apex

            // JSON are very much same as Apex Map - as both store informatione in Key Value Pair

            // JSON.deserialize() return type is Object. But we are expecting results to be in Map. So to resolve this conflict, we are using Type-Casting

            // Typecasting  is a fundamental concept of converting Data type from one category to another

            Map<String, Object> animalInfo = (Map<String, Object>) JSON.deserializeUntyped(jsonString);

            // animalInfo.get('animals') will return value of Object data type, but if we want to get list of string values. We need to type casting.
            List<Object> animalNames = (List<Object>) animalInfo.get('animals');

            for (Object animal : animalNames) {
                String animalName = (String) animal;
                System.debug('Final Parse Result : ' + animalName);
            }
            
        }
        return response;
    }
    public static HttpResponse getUser(){
        // Prepare Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users/2');
        request.setMethod('GET');

        // Send Request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Get Response
        System.debug('Response Status : ' + response.getStatus());
        System.debug('Response Status Code : ' + response.getStatusCode());
        System.debug('Response Body : ' + response.getBody());

        // Parse Response
        // Always check for Success status in response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            Map<String,Object> dataSupportValue = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
            // Convert Object to String -- Similar to Typecasting
            //String dataValue = String.valueOf(dataSupportValue.get('data'));
            //Map<String,Object> userInfo = (Map<String,Object>) JSON.deserializeUntyped(dataValue);
            // No Consequite Deserailisation on JSON string is possible
            Map<String, Object> userInfo = (Map<String, Object>) dataSupportValue.get('data');
            // Capture User Information
            String emailId = String.valueOf(userInfo.get('email'));
            String firstName = String.valueOf(userInfo.get('first_name'));
            String lastName = String.valueOf(userInfo.get('last_name'));
            Integer userId = Integer.valueOf(userInfo.get('id'));
            System.debug('Email Id : ' + emailId);
            System.debug('Name : ' + firstName + ' ' +  lastName);
            System.debug('Id : ' + userId);
            // TASK : Do the Same with Support part
        }
        return response;
    }


    public static HttpResponse getListOfUsers(){
        // Preapare Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('GET');

        // Send Request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Fetch Response
        System.debug('Response Status Code : ' + response.getStatusCode());
        System.debug('Response Status : ' + response.getStatus());
        System.debug('Response Body : ' + response.getBody());

        // Parsing Response
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            // Deserialising JSON using APex Wrapper Class
            List<UserWrapper> userInfos = (List<UserWrapper>) JSON.deserializeStrict(jsonString, List<UserWrapper>.class);

            for(UserWrapper user : userInfos){
                String userName = user.name;
                System.debug(' Famous Person Name :  ' + userName);
                Integer userId = user.id;
                System.debug(' Famous Person Id :  ' + user.Id);
                System.debug(' Famous Person Email : ' + user.email);
                System.debug(' Famous Person Status : ' + user.status);
                System.debug(' Famous Person Gender : ' + user.gender);
            }
        }
        return response;
    }
// Wrapper Class to store User Information
    // Key name of JSON should match the variable name in APex Wrapp[er class
    // Datatype needs to be determined
    public class UserWrapper {
        public Integer id;
        public String name;
        public String email;
        public String gender;
        public String status;
    }


    /**
     * REST Callout - POST Http Method
     * Create Resource/Data Information in External System
     */
    public static HttpResponse postAnimal() {
        // Prepare Http Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        // Content which we re adding to Http Request is of JSON type
        // We are calling out to External System and referring that our Data Content is of JSON type
        request.setHeader('Content-Type','application/json');
        // JSON Body Content
        request.setBody('{ "name" : "fluffy bunny" }');

        // Send Http Request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Fetch Response
        System.debug('Response Status : '+ response.getStatus());
        System.debug('Response Status Code : '+ response.getStatusCode());
        System.debug('Response Body : ' + response.getBody());

         // Process Response
         if(response.getStatusCode() == 201){
            // Success Scenario
            System.debug('Animal Resource is CREATED!! :) ');
        } else {
            // Failure Scenario
            System.debug('Animal Resource is not Created, Something went wrong!! :( ');
        }
        return response;
    }

    /**
     * REST Callout - POST Http Method
     * Create an User in External System
     */
    public static HttpResponse postUser(){
        // Prepare Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('POST');
        // Declare Content Type is of JSON type
        request.setHeader('Content-Type','application/json');

        // Prepare JSON String
        // Approach 1 - Manual String Construction
        // request.setBody('{ "name" : "Aikokul Celik", "job" : "Salesforec Developer" }');

        // Approach 2 - Wrapper Class and Serialise
        UserRequest obj = new UserRequest();
        obj.name = 'Aikokul Celik';
        obj.job = 'Salesforce Developer';
        // Convert Wrapper Class content to JSON String
        String jsonBody = JSON.serialize(obj);
        request.setBody(jsonBody);

        // Send Request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Fetch Response
        System.debug('Response Status : '+ response.getStatus());
        System.debug('Response Status Code : '+ response.getStatusCode());
        System.debug('Response Body : '+ response.getBody());

        // Process Response
        if(response.getStatusCode() == 201){
            System.debug('User Resource Successfully Created! :) ');

            // TASK: To Fetch user Id from Response
            // Approach 1

            String jsonString = response.getBody();
            
            // Map<String, Object> userResp = (Map<String, String>) JSON.deserializeUntyped(jsonString);
            // String userId = String.valueOf(userResp.get('id'));
            // System.debug('User Created Newly Generated Id : ' + userId);

            // Approach 2
            UserResponse userResp = (UserResponse) JSON.deserializeStrict(jsonString,UserResponse.class);
            String userId = userResp.id;
            System.debug('User Created Newly Generated Id : ' + userId);
        } else {
            System.debug('User Resource Failed! :( ');
        }
        return response;
    }

        // Wrapper Class to hold User Information
    public class UserRequest {
        public String name;
        public String job;
    }

    public class UserResponse {
        public String id;
        public String name;
        public String job;
        public String createdAt;
    }

   
    public static void getAnimalWithAuthenticationNamedCredential(){
        // Prepare Request
        HttpRequest request = new HttpRequest();
        // ERefering Named Credential
        // EndPoint information & User credential
        request.setEndpoint('callout:Animal_Heroku_App');
        /**
         * Apex Code before Named Credential -- DONOT USE (JUST FOR EXPLANANTION)
         * request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
         * String username = 'panigrahi.abinash@outlook.com';
         * String password = 'FunkyArchitect';
         * Blob userCredential = Blob.valueOf(username + ':' + password);
         * request.setHeader('Authorization', 'BASIC '+ EncodingUtil.base64encode(userCredential));
         */

        request.setMethod('GET');

        // Sending Request
        Http http = new Http();
        HttpResponse response = http.send(request);

        // Fetching Response
        System.debug('Response Status '+ response.getStatus());
        System.debug('Response Status Code '+ response.getStatusCode());
        System.debug('Response Content/Body '+ response.getBody());

    }

}










    







/*
* OUTBOND INTEGRATION / CALLOUT - REST API
*
* Implementation:

* Step I : Create Remote Site Setting

* Step II : Dry/Mock Run with Postman/Insomnia to replicate our Callout Scenario
*
* Step III : Create REST Request
          a. Endpoint URL - Domain + URI
          b. HTTP Method - Define the Intent of Callout request
               GET (Fetch), Post (Create), PATCH (Update), PUT (Update/Replace), DELETE
          c. Authentication - User credentials
*         d. Request Content/Body - Placeholder Information
*
* Step IV : Sending HTTP/REST Request
*
* Step V : Getting HTTP Response
*          a. Status Code
*              200 (Success Response Code for GET Request)
*              201 (Success Response Code for POST/PUT Request)
*              204 (Success Response Code for DELETE Request)
*              401 (Error Code for Unothorized Access)
*              404 (File /URL Error Code)
*
*           b. Response Content/Body - Typically JASON
*
* Step VI : PArsing JSON Response
*
*           i. Manually Deserializing JSON Response. Then Looping through to find the correct Key and Value
*           ii. Using Apex Wrapper Class for Deserialization
*
*
* Pre Requistive :
*
* 1. Target External System Endpoint URL
*
* 2. User Credentials
*
* 3. API Documentation/Guide
*
* 4. 
*/