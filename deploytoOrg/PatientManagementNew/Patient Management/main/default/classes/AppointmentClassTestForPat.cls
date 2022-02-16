@isTest
public class AppointmentClassTestForPat {
@isTest
    public static void TestforCondition(){
        Patient__c oldrec3333 = new Patient__c();
        oldrec3333.Name = 'Himesh';
        oldrec3333.Patient_Last_Name__c = 'Kumar';
        oldrec3333.Gender__c = 'Male';
        oldrec3333.Date_of_Birth__c = date.parse('05/03/2000');
        oldrec3333.Email_Address__c = 'Himkumar@example.com';
        oldrec3333.Contact_Number__c = '1111111';
        oldrec3333.Specialist_Available__c = 'Allergist';
        oldrec3333.Address__c = 'Biratnagar';
        oldrec3333.Doctor_Available__c = 'Dr. Bikash Nepal';
        oldrec3333.Select_Appointment_Date__c = Date.TODAY();
        oldrec3333.Select_Appointment_Time__c = '8:30 AM - 9:00 AM';
        insert oldrec3333;
        
        Patient__c oldrec2222 = new Patient__c();
        oldrec2222.Name = 'Himesh';
        oldrec2222.Patient_Last_Name__c = 'Kumar';
        oldrec2222.Gender__c = 'Male';
        oldrec2222.Email_Address__c = 'Himkumar@example.com';
        oldrec2222.Date_of_Birth__c = date.parse('05/03/2000');
        oldrec2222.Address__c = 'Biratnagar';
        oldrec2222.Contact_Number__c = '1111111';
        oldrec2222.Specialist_Available__c = 'Allergist';
        oldrec2222.Doctor_Available__c = 'Dr. Bikash Nepal';
        oldrec2222.Select_Appointment_Date__c = Date.TODAY();
        oldrec2222.Select_Appointment_Time__c = '8:30 AM - 9:00 AM';
        
        Database.SaveResult resdoc = Database.insert(oldrec2222,false);
        
        // Then Condition 
        System.assertEquals('Appoinment Time has already been Selected. Either Change Appointment Date or Time', resdoc.getErrors()[0].getMessage()) ;
    }
}