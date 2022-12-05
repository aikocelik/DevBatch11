public class primitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('Create new date instance');

        Date newDate = Date.newInstance(1976, 6, 24);
        system.debug('new date\'s is ' + newDate);

        Date newDate2 = Date.newInstance(2022, 10, 17);
        system.debug('new date\'s is ' + newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);

    }
    public void printTime(){
    Time myTime = time.newInstance(1, 1, 15, 55);
    system.debug('my time is ' + myTime);

    Time meTime = time.newInstance(11, 25, 45, 85);
    system.debug('meTime is ' + meTime);

    }

    public void printNewDateTime(){
    
    Date newDate = date.today();
    Time newTime = time.newInstance(1, 1, 15, 55);

    Datetime dt1 = Datetime.newInstance(newDate, newTime);
    system.debug('dt1 is ' + dt1);
    
    datetime dt2 = datetime.newInstance(2000, 5, 16);
    system.debug('dt2 is ' + dt2);

    }

} 

