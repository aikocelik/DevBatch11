
/*Whenever a case is created with origin as email then set status as new and Priority as Medium*/

trigger CaseTrigger on Case (before insert) {
  if (Trigger.isBefore && Trigger.isInsert) {
    
    for( Case eachCase: Trigger.new){
      if (eachCase.Origin == 'Email') {
        eachCase.Status = 'New';
        eachCase.Priority = 'Medium';
        
      }
    }
  }
}