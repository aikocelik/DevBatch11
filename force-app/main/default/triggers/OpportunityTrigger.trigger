trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update ) {
 if(trigger.isBefore && trigger.isUpdate){
    OpportunityTriggerHandlerAssignment6.OppTrigger(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
    OpportunityTriggerHandlerAssignment6.StgUpd(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
 }

}