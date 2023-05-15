global class LookUpShipment {
   @InvocableMethod(label='Get Shipment ID' description='Get Shipment ID from Shipment Name' category='Logistics')
   public static List<String> getShipmentIds(List<String> names) {
    
       List<Id> shipmentIds = new List<Id>();
       List<Shipment__c> shipments = [SELECT Id FROM Shipment__c WHERE Name IN :names];
       for (Shipment__c shipment : shipments) {
           shipmentIds.add(shipment.Id);
       }
       return shipmentIds;
   }
}


