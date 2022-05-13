trigger amountUpdateOnContact on Account (after update) {
   
    set<Id> accIds=new set<Id>();
for(Account a:trigger.new)
{
    if(a.AnnualRevenue !=null && a.AnnualRevenue !=trigger.oldMap.get(a.Id).AnnualRevenue)
    
    accIds.add(a.Id);
   
    
}
    if(accIds.size()>0)
    {
        List<Contact> con=new List<Contact>();
        List<Account> accounts=[Select Id,AnnualRevenue,(Select Id,Billing_Amount__c from Contacts) from Account where Id IN:accIds];
        
        for(Account a:accounts)
        {
            integer size=a.Contacts.size();
            for(Contact c:a.Contacts)
            {
           
                     c.Billing_Amount__c=a.AnnualRevenue/size;
                     Con.add(c);
                }
            }
        
        if(Con.size()>0)
        {
            update Con;
            system.debug('Cons:'+Con);
        }
    }
}