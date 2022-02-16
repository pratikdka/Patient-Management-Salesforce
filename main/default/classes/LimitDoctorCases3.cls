public class LimitDoctorCases3 {
public static void CasesCount3(List<Patient__c> List3){
    List<Patient__c> listofPat3 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Bilash Gautam'];
        if(listofPat3.Size()>= 4)
            List3[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }  
}