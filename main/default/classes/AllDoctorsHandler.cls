public class AllDoctorsHandler {
    public static void CasesCount(List<Patient__c> pat){
        
        List<Patient__c> listofPat = [Select id, Select_Appointment_Date__c from Patient__c
                                      where Select_Appointment_Date__c = TODAY];
        if(listofPat.Size() > 59){
            pat[0].addError('We have reached the Maximum Number of Patient for this day !!');   
        }
    }
}