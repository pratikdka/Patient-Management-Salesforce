@isTest
public class AmongThreeTests {
    @isTest
    public static void ThreeDifferentTests(){
        Hospital_Payment_Section__c common = new Hospital_Payment_Section__c ();
        
        // Given 
        common.Test_number_1__c = 'Blood Testing';
        common.Test_number_2__c = 'Blood Testing';
        Database.SaveResult res = Database.insert(common,false);  
        
        // Then  
        System.assertEquals('This test has already been selected in previous fields.', res.getErrors()[0].getMessage()) ;
    }
    
    @isTest
     public static void ThreeDifferentTests2(){
        Hospital_Payment_Section__c common2 = new Hospital_Payment_Section__c ();
        
        // Given 
        common2.Test_number_2__c = 'Blood Testing';
        common2.Test_number_3__c = 'Blood Testing';
        Database.SaveResult res2 = Database.insert(common2,false);  
        
        // Then  
        System.assertEquals('This test has already been selected in previous fields.', res2.getErrors()[0].getMessage()) ;
    }
     @isTest
     public static void ThreeDifferentTests3(){
        Hospital_Payment_Section__c common3 = new Hospital_Payment_Section__c ();
        
        // Given 
        common3.Test_number_1__c = 'Blood Testing';
        common3.Test_number_3__c = 'Blood Testing';
        Database.SaveResult res3 = Database.insert(common3,false);  
         
        // Then  
        System.assertEquals('This test has already been selected in previous fields.', res3.getErrors()[0].getMessage()) ;
    }
    
}