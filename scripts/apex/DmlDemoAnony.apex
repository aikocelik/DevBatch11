DmlDemo.dmlInsertMultiple_right();

DmlDemo.dmlInsertDemo_stnObj();
DmlDemo.dmlInsertDemo_cstObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlInsertDemo_4();
DmlDemo.dmlInsertDemo_5();
DmlDemo.dmlInsertDemo_6(); */

//List<Account> delacc = [select id from account where name like '%INC%'];
delete [select id from account where createdDate = THIS_WEEK];