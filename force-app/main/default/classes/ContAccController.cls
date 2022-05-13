public class ContAccController {
    public List<ContAccWrapper> accounts{set;get;}
    public  ContAccWrapper ac{set;get;}
    public ContAccController()
    {
        accounts=new List<ContAccWrapper>();
       ac=new ContAccWrapper();
        ac.acc=new Account();
        ac.con=new Contact();
        
    }
    public void addElm()
    {
        accounts.add(ac);
          
    }
}