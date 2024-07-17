public class SOQLQueries_001 {

    public static void WriteSOQLQueries(){
        /*Handling list of records returned by SOQL query.
        List<Account> allAccounts = [SELECT ID, Name, AnnualRevenue FROM Account];
        
        for(Account acc : allAccounts){
            System.debug(acc.Name + ' ' + acc.AnnualRevenue);
        }*/
        
        //Handling only one record returned by SOQL query.
        Account acc = [SELECT ID, Name, AnnualRevenue FROM Account WHERE Id = '0012v00003BfdonAAB'];
        
        
            System.debug(acc.Name + ' ' + acc.AnnualRevenue);
        
        
        /*Handling only one record returned by SOQL query.
        List<Account> allAccounts = [SELECT ID, Name, AnnualRevenue FROM Account WHERE Id = '0012v00003BfdonAAB' OR Id = '001GC00003gQFvCYAW'];
        
        for(Account acc : allAccounts){
            System.debug(acc.Name + ' ' + acc.AnnualRevenue);
        }*/
        
        Integer accCount = [SELECT Count() FROM Account];
    }
}