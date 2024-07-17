global class Prashant_BatchApex implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc){
        
      String query = 'SELECT Name, Phone, AnnualRevenue FROM Account';
      return Database.getQueryLocator(query);
        
   }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        
        for(Account a:scope){
            if( a.Phone == null){
                a.Phone = '8897646589';
            }
        }
        update scope;
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
}