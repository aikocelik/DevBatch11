Calculator c2 = new Calculator();
integer c2Sum1 = c2.add(20,25);
system.debug('c2Sum1 is ' + c2Sum1);
integer c2Sum2 = c2.add(40,45);
system.debug('c2Sum2 is ' + c2Sum2);
integer x = 88;
integer y = 99;
integer c2Sum3 = c2.add(x, y);
system.debug('c2Sum3 is ' + c2Sum3);


Calculator c1 = new Calculator();
string returnC2 = c1.printAndReturnMessage('print this asap');
system.debug(returnC2);

Calculator c1 = new Calculator();
c1.welcomeMessage();

string message = 'print this message';
c1.printNewMessage(message);
c1.printNewMessage('now print this.');