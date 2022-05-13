public class Custom_Example {
    public list<String> afields{set;get;}
    public list<String> cfields{set;get;}
    public list<Account> accounts{set;get;}
    public list<Contact> contacts{set;get;}
public Custom_Example()
{
    cfields=new List<String>{'LastName','FirstName','Email','Phone'};
    afields=new List<String>{'Name','Phone','Industry','Rating'};
    accounts=[Select Id,Name,Phone,Industry,Rating from Account limit 5];
    contacts=[Select Id,LastName,FirstName,Email,Phone from Contact limit 5];
}
}