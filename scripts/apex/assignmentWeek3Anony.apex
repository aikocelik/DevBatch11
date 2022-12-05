/*
List<string> coloursList = new List<string>();
coloursList.add('Red');
coloursList.add('Blue');
coloursList.add('Orange');
coloursList.add('Yellow');
coloursList.add('Green');




system.debug(coloursList);
integer sizeOfClr=  coloursList.size();
system.debug(sizeOfClr);
system.debug(coloursList.size());
boolean redClr = coloursList.contains('Red');
system.debug(redClr);
string toUppCs = coloursList.get(sizeOfClr -1).toUpperCase();

system.debug(toUppCs);
string theFourth = coloursList.get(3).toUpperCase();
system.debug(theFourth);

List<string> colourCodesList = new List<string>{'#000000', '#FF0000', '#F80000' , '#F30000' 	};

boolean checkEqual = coloursList.equals(colourCodesList);
system.debug(checkEqual);

coloursList.addAll(colourCodesList);

system.debug(coloursList);
*/

Set<string> fruitSet = new Set<string> {'Blueberry', 'Raspberry', 'Strawberry', 'Checkerberry'};
for (string eachFruit : fruitSet) {
  system.debug('Berry ' + eachFruit);
}
system.debug('The lenght of the fruitSet ==>')

System.debug('When we add Apricot ==> '+ fruitsSet.add('Apricot') + fruitsSet );
System.debug('Apricaot is contain == > ' + fruitsSet.contains('Apricot'));
System.debug('Is the fruitSet full ?? ' + !fruitsSet.isEmpty());