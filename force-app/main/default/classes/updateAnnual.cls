public class updateAnnual {
public static void methodone(Set<Id> accIds){
list<account> newlist=[select name,id,AnnualRevenue from account where Id IN:accIds ];
list<account> finalupdate=new list<account>();
for(account a:newlist){
    if(a.AnnualRevenue !=null)
    {
decimal d=a.AnnualRevenue/2;
a.AnnualRevenue=d;
 finalupdate.add(a) ;  
    }
}


    if(finalupdate.size()>0)
       update finalupdate;
}
}