public class Prashant_DML {

    public static void insertDML(){
        //Single Record
        Account acc = new Account( AnnualRevenue=45000, BillingCity='Tirupati',Phone='8897646589' );
        //insert acc; //insert 
        Database.insert(acc, false); // allOrNone=false, it ignored the records with issues and performs target 
                                     //operation on records with no issues.
        
        //Multiple records insertion
        List<Case> casesToInsert = new List<Case>();
        
        Case c1 = new Case(Subject = 'Case1', Priority='Medium');
        Case c2 = new Case(Subject = 'Case2', Priority='Medium');
        Case c3 = new Case(Subject = 'Case3', Priority='Medium');
        Case c4 = new Case(Subject = 'Case4', Priority='Medium');
        
        casesToInsert.add(c1);
        casesToInsert.add(c2);
        casesToInsert.add(c3);
        casesToInsert.add(c4);
        
        insert casesToInsert;
    }
    
    public static void updateDML(){
        Account acc = new Account(Id='001GC00003gQJr5YAG');
        acc.AccountSource = 'Web';
        update acc;
        
        Case cs = [SELECT Id, Subject, Status FROM Case WHERE ID = '5002v000038enp4AAA'];
        cs.Status = 'In Progress';
        update cs;
    }
    
    public static void deleteDML(){
        Account acc = new Account(Id='001GC00003gQJr5YAG');
        
        //List<Case> casesLinked = [SELECT Id FROM Case WHERE accountID = :acc.Id];
        
        Database.DeleteResult delResult = Database.delete(acc, false);
        
        
            if(delResult.isSuccess()){
                System.debug('Delete is Successful.');
            }
            else{
                Database.Error[] allErrors = delResult.getErrors();
                
                for(Database.Error err : allErrors){
                    System.debug('Error Info: ' + err.getMessage() );
                }
            }
        
        
        
        
        
    }
    
    public static void undeleteDML(){
        Account acc = [SELECT ID FROM Account WHERE Id = '001GC00003gQJr5YAG' ALL ROWS];
        undelete acc;
    }
}