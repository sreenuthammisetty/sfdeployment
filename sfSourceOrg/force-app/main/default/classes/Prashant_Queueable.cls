public class Prashant_Queueable implements Queueable {

    public void execute(QueueableContext con){
        System.debug('This stmt is inside Queueable Apex.');
    }

}