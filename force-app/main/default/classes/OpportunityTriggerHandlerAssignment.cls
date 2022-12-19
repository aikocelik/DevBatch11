public  class OpportunityTriggerHandlerAssignment6 {
    //1. Print the new and old field values for (Opportunity Name and Amount) fields whenever
    //an opportunity is updated.
        public static void OppTrigger(List<Opportunity> newList , List<Opportunity> oldList , map< id, Opportunity> oppOldMap, map<id, Opportunity> oppNewMap) {
            for (opportunity opp : newList) {
               System.debug('Opportunity  new name  ' + opp.Name  + 'Opportuniy old name is ' + oppOldMap.get(opp.id).Name);
               System.debug('Opportunity  new amount  ' + opp.Amount  + 'Opportuniy old amount is ' + oppOldMap.get(opp.id).Amount);
            } 
        }
    
    //3. When the StageName of an opportunity is updated, then print the value of description
    //field and opportunity name.
        public static void StgUpd(List<Opportunity> newList, List<Opportunity> oldList , map< id, Opportunity> oppOldMap, map<id, Opportunity> oppNewMap) {
            for (opportunity opp2 : newList) {
                if(opp2.stageName != oppOldMap.get(opp2.id).StageName ){
                System.debug( 'Description --> ' + opp2.Description + ' Opportunity Name --> ' + opp2.Name);
                }
            }
        }
    
    }