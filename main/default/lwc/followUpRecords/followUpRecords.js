import { LightningElement, api } from 'lwc';

import Name_FIELD from "@salesforce/schema/Patient__c.Name";
import Doctor_Available__c_FIELD from "@salesforce/schema/Patient__c.Doctor_Available__c";
import Recommended_Visit__c_FIELD from "@salesforce/schema/Medications__c.Recommended_Revisit_Date__c";


export default class followUpRecords extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields = [Name_FIELD, Doctor_Available__c_FIELD, Recommended_Visit__c_FIELD];
    handleSubmit(event){
        //you can change values from here
        //const fields = event.detail.fields;
        //fields.Name = 'My Custom  Name'; // modify a field
        console.log('Patient detail : ',event.detail.fields);
        console.log('Patient name : ',event.detail.fields.Name);
    }
}