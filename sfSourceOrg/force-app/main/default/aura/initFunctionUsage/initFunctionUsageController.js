({
	doinit : function(component, event, helper) {    
      var action=  component.get('c.getmymap');  
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS')
            {
              component.set('v.Mapuse',response.getReturnValue());
            }
        });
  	$A.enqueueAction(action);
 	}
})