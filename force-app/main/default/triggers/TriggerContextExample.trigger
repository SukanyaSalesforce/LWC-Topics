trigger TriggerContextExample on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) 
{
if(trigger.isBefore&&trigger.isDelete)
{
    set<Id> accIds=new set<Id>();
    for(Account a:trigger.old)
    {
        
       accIds.add(a.Id);
    }
    if(accIds.size()>0)
    {
       List<Contact> contacts=[Select Id,AccountId from Contact where AccountId IN:accIds];
        for(Account a:trigger.old)
        {
               if(contacts.size()>0)
               a.addError('Dont delete account because it has related contacts');
           }
    }
       
    
}
    /*system.debug('Before insert trigger.new value'+trigger.new);
     system.debug('Before insert trigger.newMap value'+trigger.newMap);
     system.debug('Before insert trigger.old value'+trigger.old);
     system.debug('Before insert trigger.oldMap value'+trigger.oldMap);
}
    if(trigger.isBefore&&trigger.isupdate)
{
    system.debug('Before update trigger.new value'+trigger.new);
     system.debug('Before update trigger.newMap value'+trigger.newMap);
     system.debug('Before update trigger.old value'+trigger.old);
     system.debug('Before update trigger.oldMap value'+trigger.oldMap);
}
    
    if(trigger.isBefore&&trigger.isDelete)
{
    system.debug('Before Delete trigger.new value'+trigger.new);
     system.debug('Before Delete trigger.newMap value'+trigger.newMap);
     system.debug('Before Delete trigger.old value'+trigger.old);
     system.debug('Before Delete trigger.oldMap value'+trigger.oldMap);
}
    if(trigger.isAfter&&trigger.isInsert)
{
    system.debug('After insert trigger.new value'+trigger.new);
     system.debug('After insert trigger.newMap value'+trigger.newMap);
     system.debug('After insert trigger.old value'+trigger.old);
     system.debug('After insert trigger.oldMap value'+trigger.oldMap);
}
    if(trigger.isAfter&&trigger.isupdate)
{
    system.debug('After update trigger.new value'+trigger.new);
     system.debug('After update trigger.newMap value'+trigger.newMap);
     system.debug('After update trigger.old value'+trigger.old);
     system.debug('After update trigger.oldMap value'+trigger.oldMap);
}
   
    if(trigger.isAfter&&trigger.isDelete)
{
    system.debug('After Delete trigger.new value'+trigger.new);
     system.debug('After Delete trigger.newMap value'+trigger.newMap);
     system.debug('After Delete trigger.old value'+trigger.old);
     system.debug('After Delete trigger.oldMap value'+trigger.oldMap);
}
     if(trigger.isAfter&&trigger.isunDelete)
{
    system.debug('After unDelete trigger.new value'+trigger.new);
     system.debug('After unDelete trigger.newMap value'+trigger.newMap);
     system.debug('After unDelete trigger.old value'+trigger.old);
     system.debug('After Delete trigger.oldMap value'+trigger.oldMap);
}*/
}