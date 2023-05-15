public class OpportunityAction {
    
    @InvocableMethod(label='Update Opportunity Shipment Status' description='Updates Shipment Status when opportunity is Closed Won.')
	public static void UpdateOpportunityShipmentStatus(List<Id> opportunityIds) {
		
        List<Opportunity> opportunities = [
            SELECT Id, Status__c 
            FROM Opportunity 
            WHERE opportunity.Id IN :opportunityIds
        ];
        
        for (Opportunity opp : opportunities) {
            opp.Status__c = 'New';
        }
        
        // other logic here...
        
        update opportunities;
        
        // ...
    }
}
