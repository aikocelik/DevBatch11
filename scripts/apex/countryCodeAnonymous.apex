Map<string, Country_code__c> allCountryCodes = Country_code__c.getAll();
System.debug('all country codes => ' + allCountryCodes);
for (string eachCountry : allCountryCodes.keySet()) {
  System.debug('Country is ' + eachCountry + ' its code is ' + allCountryCodes.get(eachCountry).code__c);
}