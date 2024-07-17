trigger Prashant_Trigger on Account (before insert) {
	
    PrashantTriggerHandler.callTrigger(Trigger.New);
    
}