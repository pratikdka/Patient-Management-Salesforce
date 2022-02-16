trigger TriggerLimitingNoOfRecords on Patient__c (before insert) {
if(Trigger.IsInsert && Trigger.isBefore)
      LimitingNumberOfRecordsPerDayforDoctors.CasesCount(Trigger.New);    
}