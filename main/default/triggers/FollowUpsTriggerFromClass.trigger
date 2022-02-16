trigger FollowUpsTriggerFromClass on Follow_Up__c (before insert) {
if(Trigger.IsInsert && Trigger.isBefore)
      ClassForNameDateTime.DoctorNameDateAndTime();    
}