public class PrashantPg2Controller {

    public Integer num1{get; set;}
    public Integer num2{get; set;}
    public Integer res {get; set;}
    
    public void add(){
        res = num1 + num2;
        System.debug(num1 + ' + ' + num2 + ' = ' + res);
    }
    
    
    
}