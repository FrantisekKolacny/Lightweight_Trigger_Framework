/** 
* The dispatcher is responsible for making sure all of the applicable methods on your trigger handler are called.
* It also contains a check to make sure that the trigger has not been disabled.
* If the trigger has been disabled, then the trigger events will not be fired.
*
*/
public class TriggerDispatcher {

    /**
    * Call this method from your trigger, passing in an instance of a trigger handler which implements TriggerHandler.
    * This method will fire the appropriate methods on the handler depending on the trigger context.
    * 
    * @param handler an instance of trigger handler which must implements TriggerHandler interface.
    */
    public static void run(TriggerHandler handler) {
        // Check to see if the trigger has been disabled. If it has, return
        if (!handler.isEnabled()) {
            return;
        } else if (Trigger.isBefore) {
                dispatchBefore(handler);
        } else if (Trigger.isAfter) {
                dispatchAfter(handler);
        }
    }

    /**
    * Private method which is calling logic for before triggers.
    * 
    * @param handler an instance of trigger handler which must implements TriggerHandler interface.
    */
    private static void dispatchBefore(TriggerHandler handler) {
        if (Trigger.isInsert) {
            handler.beforeInsert(Trigger.new);
        } else if (Trigger.isUpdate) {
            handler.beforeUpdate(Trigger.newMap, Trigger.oldMap);
        } else if (Trigger.isDelete) {
            handler.beforeDelete(Trigger.oldMap);
        } 
    }
    /**
    * Private method which is calling logic for after triggers.
    * 
    * @param handler an instance of trigger handler which must implements TriggerHandler interface.
    */
    private static void dispatchAfter(TriggerHandler handler) {
        if (Trigger.isInsert) {
            handler.afterInsert(Trigger.newMap);
        } else if (Trigger.isUpdate) {
            handler.afterUpdate(Trigger.newMap, Trigger.oldMap);
        } else if (Trigger.isDelete) {
            handler.afterDelete(Trigger.oldMap);
        } else if (Trigger.isUndelete) {
            handler.afterUndelete(Trigger.newMap);
        }
    }
}