({
    doInit: function(component,event,helper){
        component.find("creatingContactRecordOnAccount").getNewRecord(
            "Contact",
            null,      
            false,
            $A.getCallback(function(){
                var conRec = component.get("v.newContactRecord");
                var error = component.get("v.recordError");
                if(error || (conRec === null)){
                    alert("Error in initializing template");
                }
            })
        );
    },
    
    createContact: function(component,event,helper){
        component.set("v.contactFieldsToQuery.AccountId", component.get("v.recordId"));
        component.find("creatingContactRecordOnAccount").saveRecord(function(saveResult){ 
            if(saveResult.state === "SUCCESS" || saveResult.state === "DRAFT"){
                alert("Changes saved successfully.");
            }
            else if(saveResult.state === "INCOMPLETE"){
                alert("Error in saving record");
            }
            else if(saveResult.state === "ERROR"){
                alert("Problem saving record, error:" + JSON.stringify(saveResult.error));
            }
            else{
                  alert('Unknown problem, state: ' + saveResult.state + ', error: ' + JSON.stringify(saveResult.error));
                }
        });
    }
})