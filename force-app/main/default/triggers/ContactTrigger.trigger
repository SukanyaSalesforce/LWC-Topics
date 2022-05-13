trigger ContactTrigger on Contact (after insert) {
    //UpdateAccountAmount.updateamount(trigger.newMap,trigger.oldMap);
    CreateAccount.createContact(trigger.new);

}