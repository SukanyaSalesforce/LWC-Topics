//When ever system admin create case that time only case should be update Subject='Updated from Trigger' in case 
trigger HieraricyCustomSetting on Case (before insert) {
Capital__c c=Capital__c.getInstance(UserInfo.getUserId());
    if(c.Active__c !=true)
    {
        for(Case c:Trigger.new)
        {
            c.Subject='Updated from Trigger';
        }
    }
    

}