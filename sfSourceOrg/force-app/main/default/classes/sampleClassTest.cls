@isTest
public class sampleClassTest {
    
    static testMethod void assignNameTest(){
        //1.Test Input
        sampleClass obj = new sampleClass();
        //2.Do target op
        obj.assignName();
        //3.Verify test results
        System.assertEquals('ram', obj.name);
    }
    
}