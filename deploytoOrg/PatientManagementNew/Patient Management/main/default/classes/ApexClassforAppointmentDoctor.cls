public class ApexClassforAppointmentDoctor {
    public static void AppointDocDateTime(){
        LIST<Patient__c> li = [select id,Select_Appointment_Time__c,Doctor_Available__c, Select_Appointment_Date__c from Patient__c where Select_Appointment_Time__c!= null]; 
    for(Patient__c pat :(LIST<Patient__c>) trigger.new)
    {
        if(pat.Select_Appointment_Time__c != null){
            for(Patient__c existrecord :li)
            {
                if(existrecord.Select_Appointment_Time__c == pat.Select_Appointment_Time__c && existrecord.Doctor_Available__c == pat.Doctor_Available__c && existrecord.Select_Appointment_Date__c == pat.Select_Appointment_Date__c){
                    pat.Select_Appointment_Time__c.adderror('Appoinment Time has already been Selected. Either Change Appointment Date or Time');
                    
                }  
            }       
        }
    }
    }
}