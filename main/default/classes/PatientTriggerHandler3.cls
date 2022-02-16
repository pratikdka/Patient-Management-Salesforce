public class PatientTriggerHandler3 {
public static void LimitNoOfPatients3(List<Patient__c> patList3){

        List<Patient__c> thisdayPatientList3 = [Select id,Doctor_Available__c from Patient__c where
                            Doctor_Available__c = 'Dr. Bilash Gautam'];
    if(thisdayPatientList3.Size()>= 4){
            patList3[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }
    }
}