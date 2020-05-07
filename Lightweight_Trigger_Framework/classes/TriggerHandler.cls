/**
* The TriggerHandler interface dictates which methods every trigger handler must implement.
* The TriggerDispatcher can be confident that the trigger handler has a method for each of these events.
*
*/
public interface TriggerHandler 
{
    void beforeInsert(List<SObject> newItems);
 
    void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItem);
 
    void beforeDelete(Map<Id, SObject> oldItems);
 
    void afterInsert(Map<Id, SObject> newItems);
 
    void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems);
 
    void afterDelete(Map<Id, SObject> oldItems);
 
    void afterUndelete(Map<Id, SObject> newItems);
 
    Boolean isEnabled();
}