public class PatientTriggerHandler4 {
    public static void LimitNoOfPatients4(List<Patient__c> patList4){

        List<Patient__c> thisdayPatientList4 = [Select id,Doctor_Available__c from Patient__c where
                                                Doctor_Available__c = 'Dr. Bishal Raj'];
        if(thisdayPatientList4.Size()>= 6){
            patList4[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        } 
    }
}