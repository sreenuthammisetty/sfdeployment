({
	findAccs : function(component, event, helper) {
		var action = component.get('c.fetchAccs');
        action.setParams({
            searchTerm : component.get("v.keywordHolder")
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            var response1 = response.getReturnValue();
            console.log('state:' + state);
            console.log('response1:' + response1);
            if(state==="SUCCESS"){
                component.set("v.accsList", response1);
            }
        });
        $A.enqueueAction(action);
	}
})