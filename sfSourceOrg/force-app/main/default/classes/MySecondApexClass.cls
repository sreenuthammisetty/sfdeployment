public with sharing class MySecondApexClass {
    
    List<String> students;
    
    public MySecondApexClass() {
        System.debug('This displayed automatically, no one called explicitly');
    }
    
    public void CollectionDataTypes(){
        //List Collection
        List<String> cities = new List<String>();
        cities.add('Hyderabad');cities.add('Chennai');cities.add('Mumbai');cities.add('Pune');
        System.debug('# of Cities: ' + cities.size() );
        if(cities.contains('Vizag')){
            System.debug('Vizag exists in Cities list.');
        }
        
        
        students = new List<String>();
        
        List<Account> accs = [SELECT ID, Name, AnnualRevenue FROM Account];
        
        if(!accs.isEmpty()){
            System.debug('Accounts List has : ' + accs.size() );
        }else{
            System.debug('List is Empty');
        }
        
        //Set Collection
        Set<String> emails = new Set<String>();
        
        Set<Integer> allNums = new Set<Integer>{1,2,3,4,5,9,8,7,6,5,4,3,2,1};
            Set<Integer> evenNums = new Set<Integer>{2,4,6,8};
                
                System.debug('allNums: ' + allNums); 
        
        allNums.removeAll(evenNums);
        
        System.debug('allNums: ' + allNums); 
        
        
        //Map Collection
        Map<String,String> ccMap = new Map<String,String>();
        ccMap.put('India','Rupee'); ccMap.put('Japan','Yen'); ccMap.put('USA','Dollar'); ccMap.put('Canada','Dollar');
        
        System.debug('Map: '+ ccMap);//CIJU pairs
        //CIJU
        Set<String> countriesFromMap = ccMap.keySet();
        System.debug('Only Keys: Countries set >> '+ countriesFromMap ); 
        
        List<String> currenciesFromMap = ccMap.values();
        System.debug('Only Values: Currency List >> '+ currenciesFromMap ); //RYDD
        
        
    }
}