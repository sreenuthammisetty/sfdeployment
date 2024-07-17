public class Kaustav_First_Class {

    //Defining the variables
    public List<Account> accounts{get;set;}
    public Kaustav_First_Class(ApexPages.StandardController controller){
        accounts=[SELECT Name,AccountSource,Type,AnnualRevenue FROM Account LIMIT 10];    
        
    }
    
  
}