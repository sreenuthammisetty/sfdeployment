public class CompWithLtngCardUsageController {
    @AuraEnabled
    public static List <account> fetchAccount(String searchKeyWord) {
        String searchKey = '%' + searchKeyWord + '%';
        List<Account> returnList = new List<Account>();
        List<Account> lstOfAccount = [SELECT id, Name, Type, Industry, Phone, Fax, AccountSource,Description from account where Name LIKE: searchKey];
        
        for(Account acc: lstOfAccount){
            returnList.add(acc);
        }
        return returnList;
    }  
}