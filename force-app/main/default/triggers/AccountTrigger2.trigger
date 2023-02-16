trigger AccountTrigger2 on Account (before insert,after insert,before update,after update) {
// Context VARIABLES (Values which developer needs to write logic)
// CONTEXT Variable 1: Trigger.new -> List of records that are got inserted/updated
// CONTEXT Variable 2: Trigger.isBefore => Returns true if trigger is running on before event // CONTEXT Variable 3: Trigger.isInsert => Returns true if trigger is called when user has done
// CONTEXT Variable 4: Trigger.isAfter -> Returns true if trigger is called after the records inserted/updated
// CONTEXT Variable 5: Trigger.newMap -> Returns the list of records that are inserted/updated with latest values in map format
// CONTEXT Variable 6: Trigger.oldMap -> Returns the list of records that are inserted/updated with old/prior values in map format
// CONTEXT Variable 7: Trigger.isUpdate -> Returns true if trigger is called when record was updated
//BEFORE UPDATE LOGIC TO BE WRITTEN IN THIS BELOW BLOCK

if (trigger.isAfter && trigger.isUpdate) {
  for (Account accRecNew : Trigger.new) {
       Account accRecOld = Trigger.OldMap.get(accRecNew.Id);
       if()accRecNew.BillingStreet != accRecOld.BillingStreet;
  }
}
IF(Trigger.isBefore && trigger.isUpdate){

  system.debug('New Values');
  system.debug(trigger.new); 
  system.debug(trigger.newMap); //Id, Recordwithnewvalues
  
  system.debug('Old Values');
  system.debug(trigger.old); 
  system.debug(trigger.oldMap); //Id, recordswitholdValues
    
    for(Account accRecNew: Trigger.new){
    Account accRecOld = trigger.oldMap.get(accRecNew.Id); if(accRecNew.Name != accRecOld.Name){
        accRecNew.addError('Account Name can not be modified/changed once it is created'); 
      }

    } 
  }
//AFTER INSERT LOGIC TIO BE WRITTEN IN THIS BELOW BLOCK if(trigger.isAfter && Trigger.isInsert){
list<Contact> conListToInsert = new List<contact>(); for(Account accRec: Trigger.new){
contact con = new Contact(); con.LastName = accRec.Name; con.AccountId = accRec.Id; conListToInsert.add(con);
} if(conListToInsert.size()>0)
INSERT ConListToInsert; 
}