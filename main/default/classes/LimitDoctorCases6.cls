public class LimitDoctorCases6 {
public static void CasesCount6(List<Patient__c> List6){
    List<Patient__c> listofPat6 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Gyanu Prasad'];
        if(listofPat6.Size()>= 8)
            List6[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
}
}