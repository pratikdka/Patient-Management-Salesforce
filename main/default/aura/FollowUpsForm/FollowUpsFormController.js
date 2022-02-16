({
    doInit: function(component){
        component.find("forceRecord").getNewRecord(
        "Follow_Up__c",
        null,
        false,
        $A.getCallback(function() {
            var rec = component.get("v.followRecord");
            var error = component.get("v.recordError");
            if (error || (rec === null)) {
                console.log("Error initializing record template: " + error);
                return;
            }
        })
    );

    },
    cancelDialog : function(component, helper) {
        var homeEvt = $A.get("e.force:navigateToObjectHome");
        homeEvt.setParams({
            "scope": "Follow_Up__c"
        });
        homeEvt.fire();   
        
    }
    
})