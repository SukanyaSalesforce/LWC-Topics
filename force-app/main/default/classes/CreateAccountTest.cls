@isTest
public class CreateAccountTest {
    @isTest static void createCon()
    {
        Contact c=new Contact();
        c.LastName='Test';
        c.Phone='79009';
        insert c;
      integer count=[select count() from Account where Name=:c.LastName];
        system.assertEquals(1, count);
    }

}