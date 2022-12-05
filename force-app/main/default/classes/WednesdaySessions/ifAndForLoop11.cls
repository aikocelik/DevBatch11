public class ifAndForLoop11 {
    public void ifNumbers(integer a, integer b){
        if (a>b) 
        system.debug(a + ' sayisi ' + b + ' sayisindan buyuktur.');
        else if (b>a)
        system.debug(b + ' sayisi ' + a + ' sayisindan buyuktur.');
        else
        system.debug(a + ' sayisi ' + b + ' sayisina esittir..');
    }
    public void ifBread(string order, integer count){
        integer hesap = 0;
        if (order == 'ekmek'){
            hesap = count*1;
        } else if (order == 'simit'){
            hesap = count*2;
        } else if (order == 'kek'){
            hesap = count*3;
        } else {
            system.debug('verdiginiz siparis bulunmamaktir...');
        }
        if (hesap != 0) {
            system.debug(count + ' tane ' + order + ' aldiniz odeyeceginiz miktar = ' + hesap +'$');
        }

    }
}
