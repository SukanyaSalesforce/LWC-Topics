public class CreateAccount {
    Public static boolean rec=true;
public static void createContact(List<Contact> cons)
{
    List<Account> accounts=new List<Account>();
    
    
    for(Contact c:cons)
    {
      if(rec)
      {
       accounts.add(new Account(Name=c.LastName,Phone=c.Phone));
        rec=false;
      }
    }
    
    if(accounts.size()>0)
    {
        insert accounts;
        system.debug('accounts:'+accounts);
    }
}
}