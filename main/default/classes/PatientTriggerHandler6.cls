public class PatientTriggerHandler6 {
    public static void LimitNoOfPatients6(List<Patient__c> patList6){

        List<Patient__c> thisdayPatientList6 = [Select id,Doctor_Available__c from Patient__c where
                                                Doctor_Available__c = 'Dr. Gyanu Prasad'];
        if(thisdayPatientList6.Size()>= 8){
            patList6[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }    
    }
}