trigger UpdateBillingAddress on Account (before update) {
for(Account a:trigger.new)
{
   a.ShippingCity=a.BillingCity;
    a.ShippingCountry=a.BillingCountry;
}
}