public class SOQLQueryWithPassedParams {

    public static List<Account> getAccs(String billingCity){   //TODAY, YESTERDAY, THIS_WEEK, LAST_WEEK
        
        /*Static Query
        List<Account> accsToReturn = [SELECT Name, AnnualRevenue, CreatedDate FROM Account WHERE CreatedDate = TODAY];
        */
        
        //Dynamic Query
        List<Account> accsToReturn = [SELECT Name, AnnualRevenue, CreatedDate FROM Account WHERE BillingCity = :billingCity];

        return accsToReturn;
    }
}