trigger NewTriggerForAppointment on Patient__c (before insert) {
if(Trigger.IsInsert && Trigger.isBefore)
      ApexClassforAppointmentDoctor.AppointDocDateTime(); 
}