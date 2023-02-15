/*
* Implementation of Unot Test Class for SOAP API Outbound Callout
*
* STEP 1 : Create a new Mock Response Apex Class which will implement WebServiceMock
*
* STEP 2 : Inside Mock Response Class we will be implementing doInvoke method with bunch   of predefined Method parameters
*
* STEP 3 : Initialize Response Class of SOAP Utility/Service Class --
*
* STEP 4 : Pass Dummy/Fake Response values
*
* STEP 5: Assosiate Mock Response to our Unit Test method
*
* STEP 6: Invoking SOAP Callout
*
* STEP 7: System Assertion
*/

@isTest 
public with sharing class SoapApiOutboundCallout_Test {

    @isTest 
    public static void makeCalculatorCalloutSuccessTest(){
            SoapApiOutboundCallout.makeMultiplication();
            
    }
}