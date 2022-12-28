trigger AccountFieldUpdate on Account (before insert) {
    if (trigger.isInsert && trigger.isBefore){
        for (Account a: Trigger.new){
            if (a.ShippingCity==null){
            a.ShippingCity =a.BillingCity;}
            if (a.ShippingStreet==null){
            a.ShippingStreet =a.BillingStreet;}
            if (a.ShippingState==null){
            a.ShippingState= a.BillingState;}
            if(a.ShippingPostalCode==null){
            a.ShippingPostalCode= a.BillingPostalCode;}
            if (a.ShippingCountry==null){
            a.BillingCountry= a.ShippingCountry;}
        }
            
    }
}