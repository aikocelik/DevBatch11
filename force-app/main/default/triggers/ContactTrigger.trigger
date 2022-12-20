trigger ContactTrigger on Contact (before insert, after insert,before update,after update) {

  System.debug('Before updated records');
  System.debug('After updated records');

  /*if (trigger.isBefore && trigger.isInsert) {
      System.debug('====BEFORE INSERT====');
      System.debug('trigger.new is = ' + trigger.new);
      System.debug('trigget.old is = ' + trigger.old);
      System.debug('trigger.newMap is = ' + trigger.newMap);
      System.debug('tigger.oldMap is = ' + trigger.oldMap);
    }
  if (trigger.isAfter && trigger.isInsert) {
      System.debug('====AFTER INSERT====');
      System.debug('trigger.new is = ' + trigger.new);
      System.debug('trigget.old is = ' + trigger.old);
      System.debug('trigger.newMap is = ' + trigger.newMap);
      System.debug('tigger.oldMap is = ' + trigger.oldMap);

    }
  if (trigger.isBefore && trigger.isUpdate) {
      System.debug('====BEFORE UPDATE====');
      System.debug('trigger.new is = ' + trigger.new);
      System.debug('trigget.old is = ' + trigger.old);
      System.debug('trigger.newMap is = ' + trigger.newMap);
      System.debug('tigger.oldMap is = ' + trigger.oldMap);
    } */
    /*
    if (trigger.isAfter && trigger.isUpdate) {
      System.debug('====AFTER UPDATE====');
      System.debug('trigger.new is = ' + trigger.new);
      System.debug('trigget.old is = ' + trigger.old);
      System.debug('trigger.newMap is = ' + trigger.newMap);
      System.debug('tigger.oldMap is = ' + trigger.oldMap);

      List<contact> newC = trigger.new;
      List<contact> oldC = trigger.old;

      for (contact eachContact : newC) {
        for (contact eachOldContact : oldC) {
          if (eachContact.Id == eachOldContact.Id) {
            
              System.debug('EXISTING/OLD/ORIGINAL/PREVIOUS last name (OLD) : ' + eachOldContact.LastName + 'UPDATED last name (NEW) : ' + eachNewContact.LastName);
              
          }
        }
      }
    } */
}