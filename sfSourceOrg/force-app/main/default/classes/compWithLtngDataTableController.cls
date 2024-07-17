public class compWithLtngDataTableController {
    @AuraEnabled
    public static List<Contact> fetchContact(){
        List<Contact> contacts = [SELECT Id, name, title,Department FROM Contact LIMIT 20];
        return contacts;
    }
}