({
    doInit : function(component) {
        var action = component.get("c.getfollowListValuesIntoList");
        action.setParams({
            objectType: component.get("v.sObjectName"),
            selectedField: component.get("v.fieldName")
        });
        action.setCallback(this, function(response) {
            var list = response.getReturnValue();
            component.set("v.followlistValues", list);
        })
        $A.enqueueAction(action);
    }
})