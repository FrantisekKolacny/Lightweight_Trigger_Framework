/**
* The Account Trigger Handler extends Trigger Base which is providing all methods for triggers and override it. 
*
*/
public class AccountTriggerHandler extends AbstractTriggerHandler{

    public static Boolean enabled = true;

    public override Boolean isEnabled() {
        // defines if trigger is active or not.
        return enabled;
    }
 
    public override void beforeInsert(List<SObject> newItems) {
        // DO STUFF Before Insert !
    }
}