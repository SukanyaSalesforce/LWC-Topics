trigger CreateContact on Account ( Before insert,After insert,Before update,After update,Before Delete,After Delete,after undelete)
{
    if(trigger.isinsert&&trigger.isbefore)
    {
        system.debug('Before insert trigger.new value'+trigger.new);
         system.debug('Before insert trigger.newmap value'+trigger.newMap);
         system.debug('Before insert trigger.old value'+trigger.old);
         system.debug('Before insert trigger.oldMap value'+trigger.oldMap);
    }
        if(trigger.isupdate&&trigger.isbefore)
    {
        system.debug('Before update trigger.new value'+trigger.new);
         system.debug('Before update trigger.newmap value'+trigger.newMap);
         system.debug('Before update trigger.old value'+trigger.old);
         system.debug('Before update trigger.oldMap value'+trigger.oldMap);
    }
        if(trigger.isdelete&&trigger.isbefore)
    {
        system.debug('Before delete trigger.new value'+trigger.new);
         system.debug('Before delete trigger.newmap value'+trigger.newMap);
         system.debug('Before delete trigger.old value'+trigger.old);
         system.debug('Before delete trigger.oldMap value'+trigger.oldMap);
    }
         if(trigger.isinsert&&trigger.isafter)
    {
        system.debug('isafter insert trigger.new value'+trigger.new);
         system.debug('isafter insert trigger.newmap value'+trigger.newMap);
         system.debug('isafter insert trigger.old value'+trigger.old);
         system.debug('isafter insert trigger.oldMap value'+trigger.oldMap);
    }
        if(trigger.isupdate&&trigger.isafter)
    {
        system.debug('isafter update trigger.new value'+trigger.new);
         system.debug('isafter update trigger.newmap value'+trigger.newMap);
         system.debug('isafter update trigger.old value'+trigger.old);
         system.debug('isafter update trigger.oldMap value'+trigger.oldMap);
    }
        if(trigger.isdelete&&trigger.isafter)
    {
        system.debug('isafter delete trigger.new value'+trigger.new);
         system.debug('isafter delete trigger.newmap value'+trigger.newMap);
         system.debug('isafter delete trigger.old value'+trigger.old);
         system.debug('isafter delete trigger.oldMap value'+trigger.oldMap);
    }
       if(trigger.isundelete&&trigger.isafter)
    {
        system.debug('isafter undelete trigger.new value'+trigger.new);
         system.debug('isafter undelete trigger.newmap value'+trigger.newMap);
         system.debug('isafter undelete trigger.old value'+trigger.old);
         system.debug('isafter undelete trigger.oldMap value'+trigger.oldMap);
    }
    }
   /* List<contact> cons=new List<Contact>();
for(Account a:trigger.new)
{
    Contact c=new Contact();
    c.LastName=a.Name;
    c.AccountId=a.Id;
    cons.add(c);
    
}
    if(cons.size()>0)
    {
        insert cons;
        system.debug('cons'+cons);
    }*/