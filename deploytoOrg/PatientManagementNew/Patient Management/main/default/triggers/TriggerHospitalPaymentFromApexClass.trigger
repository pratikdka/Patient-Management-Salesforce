trigger TriggerHospitalPaymentFromApexClass on Hospital_Payment_Section__c (before insert) {
if(Trigger.IsInsert && Trigger.isBefore)
      HospitalPaymentApexClass.PaymentClassCall();    
}