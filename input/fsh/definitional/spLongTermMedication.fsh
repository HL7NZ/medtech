Instance:   LongTermMedication
InstanceOf: SearchParameter
Title:          "Search on Long term medication flag"
Description:    "Allows the client to retrieve only the MedicationRequest resources marked as 'long term'"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166#NZ

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Long term medication search</div>"

* url = "http://hl7.org.nz/fhir/hpi/SearchParameter/long-term-medication"
* name = "LongTermMedication"        //note that this is just a name - the actual parameter string is the code.

* status = #draft
* description = "Allows the client to retrieve only the MedicationRequest resources marked as 'long term'"

//the code is the actual parameter. 
* code = #long-term-medication
* base = #MedicationRequest
* type = #token
