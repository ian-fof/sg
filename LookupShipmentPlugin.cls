global class LookupShipmentPlugin implements Process.Plugin {

    global Process.PluginResult invoke(Process.PluginRequest request) {
        
        String name = (String) request.inputParameters.get('shipmentName'); 
        List<Shipment__c> shipments = [SELECT Id FROM Shipment__c WHERE Name = :name LIMIT 1];
        
        Map<String, Object> result = new Map<String, Object>();	
        
        if (shipments.isEmpty()) {
            result.put('shipmentId', null);
        } else {
            result.put('shipmentId', shipments.get(0).Id);
        }
        
        return new Process.PluginResult(result);
    }
    
    global Process.PluginDescribeResult describe() {
        
        Process.PluginDescribeResult result = new Process.PluginDescribeResult();
        
        result.Name = 'Look Up Shipment ID By Name';
        result.Tag = 'Shipment Classes';
        
        result.inputParameters = new 
           List<Process.PluginDescribeResult.InputParameter>{ 
               	new Process.PluginDescribeResult.InputParameter('shipmentName', 
               	Process.PluginDescribeResult.ParameterType.STRING, false) 
        	};
                
        result.outputParameters = new 
           List<Process.PluginDescribeResult.OutputParameter>{
           		new Process.PluginDescribeResult.OutputParameter('shipmentId', 
               	Process.PluginDescribeResult.ParameterType.STRING)
        	}; 
        return result; 
    }
}

