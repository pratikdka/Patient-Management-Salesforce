public class LimitDoctorCases {
    public static void CasesCount(List<Patient__c> List1){
        
        List<Patient__c> listofPat1 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Bhanu Prakash'];
        if(listofPat1.Size()>= 5)
            List1[0].addError('Sorry this Doctor have reached the maximum number of Patients today');   
    }
}