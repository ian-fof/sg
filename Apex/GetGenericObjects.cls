public with sharing class GetGenericObjects {
   @InvocableMethod(label='Test Invocable' description='Sobject Support' category='Testing')
   public static List<sObject> execute (List<sObject> inputRecords) {
  
       // [...]
       List<sObject> outputRecords = inputRecords;
  
       // [...]
       return outputRecords;
   }
}

