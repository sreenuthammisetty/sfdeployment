@isTest
public class TestPrashantTriggerHandler {

    public static testMethod void testcallTrigger(){
        
        //1.Prepare dummy data for - List<Account>
        Account a1 = new Account(Name='abc', Phone= '1234567891');
        Account a2 = new Account(Name='abc1', Phone= '1234567891');
        Account a3 = new Account(Name='abc2', Phone= '1234567891');
        List<Account> accLst = new List<Account>{a1, a2, a3};
        insert accLst;
        
        
        //2.Test callTrigger()
        PrashantTriggerHandler.callTrigger(accLst);
    }
}