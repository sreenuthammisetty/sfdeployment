global class VishBatchCls implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Id, Name, Description,Phone FROM Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account> accList = new List<Account>();
        
        for(Account a : scope){
            a.Description = 'Updated in a Batch class.';
            if(a.Phone == null){
                a.Phone = '8897646589';
            }
            accList.add(a);
        }
        update accList;
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Batch Execution is completed.');
    }
}