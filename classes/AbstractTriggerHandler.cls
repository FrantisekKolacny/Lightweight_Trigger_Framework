/**
* The TriggerBase provides all methods for TriggerHandler interface so specific implementations 
* of Handlers do not need to list all of them.
*
*/
public virtual class AbstractTriggerHandler implements TriggerHandler{

    public virtual Boolean isEnabled() {
        return true;
    }
 
    public virtual void beforeInsert(List<SObject> newItems) {}
 
    public virtual void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {}
 
    public virtual void beforeDelete(Map<Id, SObject> oldItems) {}
 
    public virtual void afterInsert(Map<Id, SObject> newItems) {}
 
    public virtual void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {}
 
    public virtual void afterDelete(Map<Id, SObject> oldItems) {}
 
    public virtual void afterUndelete(Map<Id, SObject> newItems) {}
}