trigger AssignTrigger on Contact (before update,after update) {
System.debug('before update');
System.debug('after update');
}