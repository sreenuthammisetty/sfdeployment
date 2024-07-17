public class Prashant_TryCatch {
    
    
    
    public void exceptionHandling(){
       
        System.debug('The Apex transaction is started.');
        
        List<Account> accs = new List<Account>();
        
        accs.add( new Account(Name='Brahmastra12', AnnualRevenue = 65000, Phone='918274757') );
        accs.add( new Account(Name='Brahmastra13', AnnualRevenue = 65000, Phone='918274757') );
        accs.add( new Account(Name='Brahmastra16', AnnualRevenue = 65000, Phone='918274757') );
        accs.add( new Account(Name='Brahmastra91', AnnualRevenue = 65000, Phone='918274757') );
        
        try
        {
            List<Id> accIds = new List<Id>();
            
            insert accs;
            
            for(Account a: accs){
                
                accIds.add(a.Id);
            }
            
            System.debug('All records inserted successfully with record Ids: ' + accIds);
            
        }
        catch(DMLException e){
            System.debug(e.getNumDml() );
        }
        
        
        System.debug('The Apex transaction is complete.');
        
    }
    
    
}