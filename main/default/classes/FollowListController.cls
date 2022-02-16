public class FollowListController {
@AuraEnabled        
public static List<String> getfollowListValuesIntoList(String objectType, String selectedField){
    List<String> followListValuesList = new List<String>();
    Schema.SObjectType convertToObj = Schema.getGlobalDescribe().get(objectType);
    Schema.DescribeSObjectResult res = convertToObj.getDescribe();
    Schema.DescribeFieldResult fieldResult = res.fields.getMap().get(selectedField).getDescribe();
    List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
    for( Schema.PicklistEntry followListVal : ple){
        followListValuesList.add(followListVal.getLabel());
    }     
    return followListValuesList;
}

}