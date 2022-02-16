public class DoctorLimitCases4 {
public static void CasesCount4(List<Patient__c> List4){
    List<Patient__c> listofPat4 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Bishal Raj'];
        if(listofPat4.Size()>= 6)
            List4[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
        }  
}