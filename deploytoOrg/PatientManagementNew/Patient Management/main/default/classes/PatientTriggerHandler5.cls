public class PatientTriggerHandler5 {
public static void LimitNoOfPatients5(List<Patient__c> patList5){

        List<Patient__c> thisdayPatientList5 = [Select id,Doctor_Available__c from Patient__c where
                            Doctor_Available__c = 'Dr. Gautam Yadav'];
    if(thisdayPatientList5.Size()>= 5){
            patList5[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
      }  
    }
}