trigger ContactTrigger on Contact (before insert) {
    contactTriggerHandler.ContactTriggermethod(trigger.new);
        system.debug('It is working');
}