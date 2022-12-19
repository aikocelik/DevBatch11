List<lead> lstLead = new List<lead> {

  lead ld1 = new Lead();
  ld1.firstName = 'Mark';
  ld1.lastName = 'Twain';
  ld1.Company = 'T Sawyer';
  lstLead.add(ld1);

  lead ld2 = new Lead();
  ld2.firstName = 'Lev';
  ld2.lastName = 'Tolstoi';
  ld2.Company = 'Peace and War';
  lstLead.add(ld2);

  lead ld3 = new Lead();
  ld3.firstName = 'Wolfgang';
  ld3.lastName = 'Mozart';
  ld3.Company = 'Figaro';
  lstLead.add(ld3);

  lead ld4 = new Lead();
  ld4.firstName = 'Antonio';
  ld4.lastName = 'Vivaldi';
  ld4.Company = 'Four Seasons';
  lstLead.add(ld4);

  lead ld5 = new Lead();
  ld5.firstName = 'Pyotr';
  ld5.lastName = 'Tchaikovsky';
  ld5.Company = 'Swan Lake';
  lstLead.add(ld5);

  if (!lstLead.isEmpty()) {
    insert lstLead;
  
  }

}