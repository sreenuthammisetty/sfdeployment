public class Ltng_accountSearch {
    @AuraEnabled
    public static List <account> fetchAccount(String searchKeyWord) {
        String searchKey = '%' + searchKeyWord + '%';
        List <Account> returnList = new List<Account>();
        List <Account> lstOfAccount = [select id, Name from account where Name LIKE: searchKey limit 10];
        for (Account acc: lstOfAccount) {
            returnList.add(acc);
        }
        return returnList;
    } 
}