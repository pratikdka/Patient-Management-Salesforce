@isTest
public class TestClassFollowUp {
    @isTest public static void TestFollow(){
        
        // Given Condition
        Follow_Up__c oldrec = new Follow_Up__c();
        oldrec.Previously_Checked_By_Dr__c = 'Dr. Bhanu Prakash';
        oldrec.Follow_Up_Date__c = Date.TODAY();
        oldrec.Follow_Up_Time__c = '3:30 PM - 3:45 PM';
        insert oldrec;
        
        Follow_Up__c oldrec22 = new Follow_Up__c();
        oldrec22.Previously_Checked_By_Dr__c = 'Dr. Bhanu Prakash';
        oldrec22.Follow_Up_Date__c = Date.TODAY();
        oldrec22.Follow_Up_Time__c = '3:30 PM - 3:45 PM';
        
        Database.SaveResult resdoc = Database.insert(oldrec22,false);
        
        // Then Condition 
        System.assertEquals('Follow-Up Time already Selected For this Day', resdoc.getErrors()[0].getMessage()) ;
    }  
    @isTest public static void TestFollow2(){
        
        // Given Condition
        Follow_Up__c second = new Follow_Up__c();
        second.Previously_Checked_By_Dr__c = 'Dr. Bikash Nepal';
        second.Follow_Up_Date__c = Date.TODAY() + 7;
        second.Follow_Up_Time__c = '3:30 PM - 3:45 PM';
        insert second;
        
        Follow_Up__c secondinsert = new Follow_Up__c();
        secondinsert.Previously_Checked_By_Dr__c = 'Dr. Bikash Nepal';
        secondinsert.Follow_Up_Date__c = Date.TODAY() + 7;
        secondinsert.Follow_Up_Time__c = '3:30 PM - 3:45 PM';
        
        Database.SaveResult resdoc2 = Database.insert(secondinsert,false);
        
        // Then Condition 
        System.assertEquals('Follow-Up Time already Selected For this Day', resdoc2.getErrors()[0].getMessage()) ;
    }  
}