public class CreateContact {
public static void createAccount(List<Account> accs)
{
    List<Contact> contacts=new List<Contact>();
    for(Account a:accs)
    {
       contacts.add(new Contact(LastName=a.Name,Phone=a.Phone,AccountId=a.Id));
    }
    if(contacts.size()>0)
    {
        insert contacts;
        system.debug('contacts:'+contacts);
    }
}
}