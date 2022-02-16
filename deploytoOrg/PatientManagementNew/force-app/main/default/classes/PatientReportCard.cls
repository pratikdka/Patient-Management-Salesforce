public class PatientReportCard {
    public static void LabToReportFollow(){
        List<Common_Lab_Tests__c> clb = new List<Common_Lab_Tests__c>(); 
        
        for(Patient_Report_Card__c prc :(List<Patient_Report_Card__c >) Trigger.new){
            
            Common_Lab_Tests__c commonlab = new Common_Lab_Tests__c();
            
            commonlab.Patient_Report_Card__c = prc.Name;
            clb.add(commonlab);
        }
        insert clb;
    }
}