trigger TriggerFollowUp on Follow_Up__c (before insert) {
for (Follow_Up__c folup: Trigger.new){
        folup.Name = folup.Name + ': New-Follow-Ups';
    }
}