({
    doInit : function(component, event, helper) {
        console.log('account record+'+JSON.stringify(component.get("v.accountRecord")));
    },
	
    callBCGHome : function(component, event, helper) {
        window.open('https://www.bcguru.in/');
    },
    
    callBCGContactUs : function(component, event, helper) {
        window.open('https://www.bcguru.in/p/blog-page.html'); 
    },
    
    loadStudentReviews : function(component, event, helper) {
        window.open('https://www.bcguru.in/p/student-reviews.html');
    }
})