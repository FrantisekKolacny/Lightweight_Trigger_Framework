/**
* The Account Trigger only calls logic from AccountTriggerHandler and TriggerDispatcher will sort trigger events. 
*
*/
trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    TriggerDispatcher.run(new AccountTriggerHandler());
}