public class PatientTriggerHandler {
    public static void LimitNoOfPatients(List<Patient__c> patList1){

        List<Patient__c> thisdayPatientList1 = [Select id,Doctor_Available__c from Patient__c where
                                               Doctor_Available__c = 'Dr. Bhanu Prakash'];
        if(thisdayPatientList1.Size()>= 5){
            patList1[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }
        
    }
}