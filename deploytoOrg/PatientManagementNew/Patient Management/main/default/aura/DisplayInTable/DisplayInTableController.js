({
    init: function (cmp, event, helper) {
        cmp.set('v.columns', [
            {label: 'Patient Name', fieldName: 'PatientName', type: 'text'},
            {label: 'Doctor Available', fieldName: 'DoctorAvailable', type: 'text'},
            {label: 'Appointment Date', fieldName: 'AppointmentDate', type: 'date'},
            {label: 'Appointment Time', fieldName: 'AppointmentTime', type: 'time'}
            
           
        ]);

        var fetchData = {
            PatientName: "Patient__c",
            DoctorAvailable : "Patient__c.Doctor_Available__c",
            AppointmentDate : "Patient__c.Select_Appointment_Date__c",
            AppointmentTime : "Patient__c.Select_Appointment_Time__c"
           
            
        };

    }
});