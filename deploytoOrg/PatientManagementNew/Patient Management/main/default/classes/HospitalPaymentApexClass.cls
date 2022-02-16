public class HospitalPaymentApexClass {
    public static void PaymentClassCall(){
        LIST<Hospital_Payment_Section__c> payment = [select id,Test_number_1__c,Test_number_2__c,Test_Number_3__c from Hospital_Payment_Section__c
                                                     where Test_number_1__c!= null AND Test_number_2__c!=null]; 
        for(Hospital_payment_Section__c pat : (LIST<Hospital_Payment_Section__c>) trigger.new){ 
            
            if(pat.Test_number_1__c != null && pat.Test_number_2__c != null){
                if(pat.Test_number_1__c == pat.Test_number_2__c){
                    pat.Test_number_2__c.adderror('This test has already been selected in previous fields.');
                }
            }
            if(pat.Test_number_2__c != null && pat.Test_number_3__c != null){
                if(pat.Test_number_2__c == pat.Test_number_3__c){
                    pat.Test_number_3__c.adderror('This test has already been selected in previous fields.');
                }
            }
            if(pat.Test_number_1__c != null && pat.Test_number_3__c != null){
                if(pat.Test_number_1__c == pat.Test_number_3__c){
                    pat.Test_number_3__c.adderror('This test has already been selected in previous fields.');
                }
            }
        }
    }
}