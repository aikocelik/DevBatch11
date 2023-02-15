
/*
* Error: Methods defined as TestMethod do not support Outbound Integration/Web service callouts
*
*Covering Rest Callout Test Scenario can be done using 2 Approaches:
* 1. Static REsourse Callout Mock
* 2. Creating a Mock Response using HttpCallout class
*
*
*/

@isTest
public with sharing class RestApiOutboundCallout_Test {


    /*
    * Unit Test Success Response for Animal Heroku App - GET Method
    *
    * Static Resource Mock Approach
    *
    * STEP 1: Upload Response Body as a STatic Resource
    * STEP 2: Fetching Mock Response from Static Resource
    * STEP 3: Link/Associate the Mock Response to our Unit Test context
    * STEP 4: Invoking REST Method logic
    * STEP 5: Assertion Statements
    */

    @isTest
    public static void getAnimalsSuccessTestUsingStaticResource(){
        Test.startTest();
        RestApiOutboundCallout.getAnimals();
        Test.stopTest();

    }
}