public with sharing class VivekClass {
    
    Date dateValue = Date.newInstance(2024,02,09);

    //List type variable
    LIST<Integer> listVar = new List<Integer>();  //List with memory allocated
    List<String> stringList;    //List defined but not allocated memory
    
    public void disp(){
        System.debug('dateValue: ' + dateValue);
    }
}