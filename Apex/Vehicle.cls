global class Vehicle {

   @InvocableVariable(label='Serial Number' description='Serial number of vehicle chassis' required=true)
   global String serialNumber;

   @InvocableVariable(label='Vehicle Model & Year' description='Model & year vehicle was released' required=true)
   global String modelYear;

   @InvocableVariable
   global ID ownerId;

   @InvocableVariable
   global Boolean notifyOwner;
}

