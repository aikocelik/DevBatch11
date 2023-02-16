trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    map<id, account> accTriggerOldMap = trigger.oldMap;
    map<id, account> accTriggerNewMap = trigger.newMap;

    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }
    
    /*
    if (trigger.isAfter) {
        List<account> accTriggerNew = trigger.New;//New (updated) values of records

        set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
        for (account newAcc : accTriggerNew) {
            Id accId = newAcc.id;
            setids.add(accId);//adding ID to newly created set.
        }
        system.debug(setids);
    }
    */
    /*
    if (trigger.isBefore && trigger.isUpdate) {
        List<account> accTriggerOld = trigger.old;//OLD (previous) values of records
        for (account oldAcc : accTriggerOld) {
            system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
        }

        List<account> accTriggerNew = trigger.New;//New (updated) values of records
        for (account newAcc : accTriggerNew) {
            system.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
        }
    }*/
    
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger.old -> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger.old -> ' + trigger.old);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before Update trigger.old -> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after Update trigger.old -> ' + trigger.old);
    }
    */



    /*
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
        system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('AFTER newly UPDATE record ==> '  + accTriggerNew);
        system.debug('AFTER newly UPDATE accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/



   /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
        system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('AFTER newly inserted record ==> '  + accTriggerNew);
        system.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/


    /*
    //insert
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('account after insert trigger called');
    }

    if (trigger.isInsert && trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    
    //update
    if (trigger.isUpdate && Trigger.isBefore) {
        system.debug('account Before UPDATE trigger called');
    }
    if (trigger.isUpdate && Trigger.isAfter) {
        system.debug('account after UPDATE trigger called');
    }*/
    
    
    
    /*//before insert
    if (Trigger.isInsert) {
        system.debug('account before INSERT trigger called.'); //when will this code run?
    }
    if (Trigger.isUpdate) {
        system.debug('account before UPDATE trigger called.');
    }
     */

    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    
}

    /*if(trigger.isBefore && trigger.isUpdate){
      List<Account> accTriggerOld = trigger.old; //old prev values of records
      for(Account oldAcc : accTriggerOld){
        System.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
      }
      List<Account> accTriggerNew = trigger.new; //New prev values of records
      for(Account newAcc : accTriggerNew){
        System.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
      }
    }
    
    /*
    if(Trigger.isBefore && Trigger.isInsert){
      System.debug('account before insert trigger.old -> ' + trigger.old);
    }
    if(Trigger.isAfter && Trigger.isInsert){
      System.debug('account after insert trigger.old -> ' + trigger.old);

      if(Trigger.isBefore && Trigger.isUpdate){
      System.debug('account before update trigger.old -> ' + trigger.old);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
      System.debug('account after update trigger.old -> ' + trigger.old);

    }



    }
  /* 
  List<Account
  > accTriggerNew = trigger.new;

  if (trigger.isBefore && trigger.isUpdate) {
    System.debug('BEFORE UPDATE new record ==> ' + accTriggerNew);
    System.debug('BEFORE UPDATE new accounts size ==> ' + accTriggerNew.size());
  
    for (account eachAcc : accTriggerNew) {
      System.debug('each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
    }
    }
    if (trigger.isAfter && trigger.isUpdate) {
      System.debug('AFTER newly UPDATE record ==> ' + accTriggerNew);
      System.debug('AFTER newly UPDATE accounts size ==>' + accTriggerNew.size());
      for (account eachAcc : accTriggerNew) {
        System.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
      }
    } 
  /*
  if (trigger.isBefore && trigger.isInsert) {
  System.debug('BEFORE INSERT new record ==> ' + accTriggerNew);
  System.debug('BEFORE INSERT new accounts size ==> ' + accTriggerNew.size());

  for (account eachAcc : accTriggerNew) {
    System.debug('each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
  }
  }
  if (trigger.isAfter && trigger.isInsert) {
    System.debug('AFTER newly inserted record ==> ' + accTriggerNew);
    System.debug('AFTER newly inserted accounts size ==>' + accTriggerNew.size());
    for (account eachAcc : accTriggerNew) {
      System.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
    }
  } */
  
  /* if (trigger.isInsert && trigger.isBefore) {
    System.debug('account before insert trigger called');
    
  }
  if (trigger.isInsert && trigger.isBefore) {
    System.debug('account after insert trigger called');
  }
  if (trigger.isUpdate && Trigger.isAfter) {
    System.debug('account BEFORE UPDATE trigger called');
  }
  if (trigger.isUpdate && trigger.isBefore) {
    System.debug('account AFTER UPDATE trigger called');
  }







  /* 
  if (Trigger.isInsert){
    system.debug('account before insert trigger called.');//when will this code run? by creating record

 } 
 if (Trigger.isUpdate) {
  System.debug('account before UPDATE trigger called');


 }
  


/*
    if(Trigger.isBefore){
      system.debug('account before insert trigger called.');
    }
    if(Trigger.isAfter){
      System.debug('account after insert trigger called.');
    } */
    


