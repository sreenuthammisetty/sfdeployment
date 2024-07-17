public class Prashant_AsynchronousApex {

    @future
    public static void futureExample(){
        System.debug('This stmt is written inside Future method.');
    }
    
    public static void disp(){
        System.debug('This is normal method.');
        futureExample();
    }
}