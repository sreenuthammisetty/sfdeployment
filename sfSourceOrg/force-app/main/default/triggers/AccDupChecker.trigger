trigger AccDupChecker on Account (before insert, before update) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        //Get existing Account names
        Set<String> existedAccNames = new Set<String>();
        
        for(Account ea : [SELECT Name FROM Account]){
            existedAccNames.add(ea.Name);
        }
        
        for(Account na : Trigger.New){
            //Account oa = Trigger.oldMap.get(na.Id);
            //if(oa.Name != na.Name){
                if(existedAccNames.contains(na.Name)){
                    na.Name.addError('Account name already found.');
                }
            //}
            
        }
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        //Get existing Account names
        Set<String> existedAccNames = new Set<String>();
        
        for(Account ea : [SELECT Name FROM Account]){
            existedAccNames.add(ea.Name);
        }
        
        for(Account na : Trigger.New){
            Account oa = Trigger.oldMap.get(na.Id);
            if(oa.Name != na.Name){
                if(existedAccNames.contains(na.Name)){
                    na.Name.addError('Account name already found.');
                }
            }
            
        }
    }
    
    
    
}