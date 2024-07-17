global class ScheduledBatchable implements Schedulable {
   global void execute(SchedulableContext sc) {
      VishBatchCls obj = new VishBatchCls();
      Database.executeBatch(obj,25);
   }
}