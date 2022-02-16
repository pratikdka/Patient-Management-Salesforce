public class LimitDoctorCases5 {
public static void CasesCount5(List<Patient__c> List5){
    List<Patient__c> listofPat5 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Gautam Yadav'];
        if(listofPat5.Size()>= 5)
            List5[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }  
}