trigger LeadTrigger on Lead (after insert) {
  System.debug('lead created.... after insert trigger.');
  
  /*List<Lead> LeadTriggerNew = trigger.new;

  if (trigger.isBefore && trigger.isInsert) {
    System.debug('before insert new lead ==> ' + LeadTriggerNew);

    for (Lead eachLd : LeadTriggerNew) {
      System.debug('print the newly created lead record ' + eachLd);
    }
    
  }
  if (trigger.isBefore && trigger.isUpdate) {
    System.debug('print the newly updated lead record ' + LeadTriggerNew);

    for (Lead eachLd : LeadTriggerNew) {
      System.debug('print the newly updates lead id is ' + eachLd.Id + ',each lead name is ' + eachLd.Name + ', description of each lead is ' + eachLd.Description);
    }
  }*/
}