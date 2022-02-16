public class ClassForNameDateTime {
    public static void DoctorNameDateAndTime(){
        List <Follow_up__c> follow = new List<Follow_up__c>();
        follow = [Select Follow_Up_Date__c, Follow_Up_Time__c, Previously_Checked_By_Dr__c FROM Follow_Up__c where Follow_Up_Time__c != NULL];
        
        for(Follow_Up__c newFollow : (List<Follow_Up__c >) Trigger.new){
            if(newFollow.Follow_Up_Time__c != Null){
                for(Follow_Up__c oldRecords : follow){
                    if (oldRecords.Follow_Up_Date__c == newFollow.Follow_Up_Date__c && oldRecords.Follow_Up_Time__c == newFollow.Follow_Up_Time__c &&
                        oldRecords.Previously_Checked_By_Dr__c == newFollow.Previously_Checked_By_Dr__c){
                            newFollow.Follow_Up_Time__c.addError ('Follow-Up Time already Selected For this Day');
                        }
                }
            }
        }
    }
}