public class LimitDcotorCases2 {
public static void CasesCount2(List<Patient__c> List2){
    List<Patient__c> listofPat2 = [Select id, Doctor_Available__c from Patient__c where
                                       Doctor_Available__c = 'Dr. Bikash Nepal'];
        if(listofPat2.Size()>= 3)
            List2[0].addError('Sorry this Doctor have reached the maximum number of Patients today');
}
}