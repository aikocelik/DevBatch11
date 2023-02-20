/**
 * SOAP ( Simple Object Access Protocol) - Earlier framework of doing Web Communication/Integration, Secure way of data transferring, XML Messaging Format only
 * Outbound Callout using SOAP Api - 4 Steps of Implementation
 * 
 * Step 1. Create Remote Site Setting - to whitelist Domain
 * Step 2. WSDL (Web Service Description Language) - Get WSDL from External System
 *      a. Endpoint URL, Features available, Input parameters ( Request), Response
 * Step 3. Convert WSDL to Apex Class using SF's framework
 * Step 4. Use/Consume/Invoke the SOAP Apex Class to make callout
 * 
 */




public with sharing class SoapApiOutboundCallout {


    public SoapApiOutboundCallout(){

    }
}