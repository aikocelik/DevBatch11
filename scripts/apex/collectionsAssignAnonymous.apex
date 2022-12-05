

Map<string, string> mapCntCurrency = new Map<string, string>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Holland', 'Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('ElSalvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

system.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkiye';
string countryCurrency = mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug(country + ' currency is ' + countryCurrency);