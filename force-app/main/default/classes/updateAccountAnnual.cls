public class updateAccountAnnual {
    public static void main(List<Account> acc){
        for(Account A:acc){
            if(A.Industry=='Banking'){
                A.AnnualRevenue=50000;
            }
        }
        
    }

}