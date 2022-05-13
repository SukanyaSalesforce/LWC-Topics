public class BatchApexExample implements Database.Batchable<sObject> {
public Database.QueryLocator start(Database.BatchableContext bc)
{
    string query='Select Id,Name,Industry from Account';
    system.debug(query);
    return database.getQueryLocator(query);
   
}
    public void execute(Database.BatchableContext bc,List<Account> acc)
    {
        for(Account a:acc)
        {
            if(a.Industry =='Education')
            {
            a.Industry='Banking';
            }
        }
        update acc;
    }
    public void finish(Database.BatchableContext bc)
    {
        User u=[Select Id,Profile.Name,Email from  User where Profile.Name='System Administrator'];
        system.debug(bc.getJobId());
        AsyncApexJob asy=[SELECT Id, JobType, Status, TotalJobItems, NumberOfErrors, CompletedDate FROM AsyncApexJob where Id=:bc.getJobId()];
       /* String[] emails=new String[]{u.Email};
            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        msg.setToAddresses(emails);
        string body='Dear'+u.profile.Name+'<br/><br/>';
        body=body+*/
    }
}