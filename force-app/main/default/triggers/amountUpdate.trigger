trigger amountUpdate on Contact (after insert,after update,after delete,after undelete) {
    Set<Id> accIds=new Set<Id>();
  
if(trigger.isAfter &&RecursiveClass.s)
{
    if(trigger.isinsert||trigger.isUpdate||trigger.isundelete)
{
   for(Contact c:trigger.new) 
   {
       if(string.isNotBlank(c.AccountId))
       {
           
            accIds.add(c.AccountId);
       }
           
   }
}
    RecursiveClass.s=false;

    if(trigger.isUpdate ||trigger.isdelete)
    {
        for(Contact c:trigger.old) 
   {
       if(string.isNotBlank(c.AccountId))
       {
                accIds.add(c.AccountId);
         }
       }
   }
    }


    if(accIds.size()>0)
    {
        List<Contact> cons=new List<Contact>();
        List<Account> accounts=[Select Id,AnnualRevenue,(Select Id,Billing_Amount__c from Contacts) from Account where Id IN:accIds];
        for(Account a:accounts)
        {
            for(Contact c:a.Contacts)
            {
                c.Billing_Amount__c=a.AnnualRevenue/a.Contacts.size();
                cons.add(c);
            }
        }
        if(cons.size()>0)
        {
            update cons;
            system.debug('cons'+cons);
        }
        
    }
}