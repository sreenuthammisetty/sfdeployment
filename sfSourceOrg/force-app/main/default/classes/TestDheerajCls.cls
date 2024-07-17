@isTest
public class TestDheerajCls {
    
    
    @isTest
    public static void testSomething(){
        
        //1.Prepare the test data
        DheerajClass d = new DheerajClass();
        
        //2.Do perform target operation to test.
        d.disp();
        
        //3.Verify Test results.
        System.assertEquals(4500, d.sal2);
    }
}