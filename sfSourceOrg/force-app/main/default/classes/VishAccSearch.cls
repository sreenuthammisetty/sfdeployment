public class VishAccSearch {
    @AuraEnabled
    public static List<Account> fetchAccs(String searchTerm){
        String str = '%'+searchTerm+'%';
        List<Account> accsLst= [SELECT ID, Name, Phone FROM Account WHERE Name LIKE :str];
        return accsLst;
    }
}