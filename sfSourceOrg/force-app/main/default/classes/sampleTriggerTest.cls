@isTest
public class sampleTriggerTest {
    
    
    
    @isTest
    static void beforeAccInsertTest(){
        //1.Test input
        Account a = new Account();
        a.Name = 'Salesforce';
        a.Phone = '8897745673';
        a.Email_Id__c = 'salesforce@sf.com';
        
        //2.Target operation
        insert a;
        
        //3.Verify test results(Optional)
        Account insertAcc = [SELECT Description FROM Account WHERE ID = :a.Id];
        System.assertEquals('Hai', insertAcc.Description);
    }
    
}