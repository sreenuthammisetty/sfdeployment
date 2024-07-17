public class DheerajClass {
    
     public Integer sal2 ;
    
    
    public void disp(){
        Object  Name = 'Hello' ; // static - member type; String - Datatype; Name - Variable name
        Object birthDate =  Date.newInstance(2000,10,10);             //'10-10-2000';
        DateTime entryTime = DateTime.newInstance(2000, 10, 1, 10, 54, 55); // (); //newInstance(2000, 10, 1, 10, 54, 55)
        Decimal sal = 4500.50;
       
        String salString;
        sal2 = (Integer)sal;
        //salString = (String)birthDate;
        //Date convertedDateTime = (Date)entryTime;
        System.debug('Decimal Salary: ' + sal);
        
        
        System.debug('Converted Salary:'+ sal2);
    }
}