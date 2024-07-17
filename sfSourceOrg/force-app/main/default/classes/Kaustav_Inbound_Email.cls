public class Kaustav_Inbound_Email implements Messaging.InboundEmailHandler {
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        String emailAdd=email.fromAddress;
        Contact con=[SELECT Id FROM Contact Where email=:emailAdd LIMIT 1];
        Case c=new Case();
        c.Subject=email.subject;
        c.Origin='Email';
        c.Priority='Normal';
        c.Status='New';
        c.ContactId=con.Id;
        c.Description=email.plainTextBody;
        insert c;
        return result;
    }

}