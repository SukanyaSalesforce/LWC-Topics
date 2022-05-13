trigger AccountTrigger on Account (before insert) {
    //CreateContact.createAccount(trigger.new);
    List<Account> acc=Trigger.new;
    updateAccountAnnual.main(acc);
}