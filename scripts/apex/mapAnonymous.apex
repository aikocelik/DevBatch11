//map key- value
Map<string, string> mapCntCurrency = new Map<string, string>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Holland', 'Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('ElSalvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

system.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Spain';
string countryCurrency = mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug(country + ' currency is ' + countryCurrency);

// get all countries (keys)
set<string> countrySet = mapCntCurrency.keySet();
system.debug('country set --> ' + countrySet);

list<string> currencyList = mapCntCurrency.values();
system.debug('currency list --> ' + currencyList);

set<string> countries = mapCntCurrency.keySet();
for(string eachCountry: countries){
  system.debug('* each country is ' + eachCountry);
  string eachCurrency = mapCntCurrency.get(eachCountry);
  system.debug('*each currency is ' + eachCurrency);
  system.debug('*** Country is ' + eachCountry + ', its Currency is ' + eachCurrency);

}
