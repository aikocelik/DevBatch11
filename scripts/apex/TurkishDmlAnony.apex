account acc = new account ();
acc.name = 'Salesforce Turkish';

insert acc;

account ac = [select id, name from Account where name = 'Salesforce Turkish' limit 1];
ac.name = 'SF Turkish';

update ac;