public class Ltng_InitFunctionUsageController {
    @AuraEnabled
    public static map<string,string> getmymap(){
        map<string,string> putkeyvalue= new map<string,string>();
        putkeyvalue.put('key1', 'Value1');  
        putkeyvalue.put('key2', 'Value2');
        putkeyvalue.put('key3', 'Value3');
        return putkeyvalue;
    }
}