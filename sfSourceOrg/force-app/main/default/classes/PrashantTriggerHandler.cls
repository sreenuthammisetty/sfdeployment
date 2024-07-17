public class PrashantTriggerHandler {
    
    public static void callTrigger(List<Account> insertingAccs){
        
        List<Account> accsAboutToInsert = insertingAccs;
        
        List<Account> accsWithIssues = new List<Account>();
        
        for(Account a : accsAboutToInsert){
            if(a.Rating == null){
                accsWithIssues.add(a);
            }
        }
        
        for(Account acc: accsWithIssues){
            acc.addError('Select Value for Rating.');
        }
    }
}