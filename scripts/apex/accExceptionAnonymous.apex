try {
  Account ac = new Account();
insert ac;
} catch(DMLException dex){
  system.debug('DML went wrong');
} 
  catch (Exception ex) {
  system.debug('something went wrong buddy');
} 

  System.debug('Apex is SIMPLE');
