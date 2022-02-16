public class PatientTriggerHandler2 {
    public static void LimitNoOfPatients2(List<Patient__c> patList2){

        List<Patient__c> thisdayPatientList2 = [Select id,Doctor_Available__c from Patient__c where
                                                Doctor_Available__c = 'Dr. Bikash Nepal'];
        if(thisdayPatientList2.Size()>=3){
            patList2[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        } 
    }
}