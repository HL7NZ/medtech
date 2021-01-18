Instance:   LongTermCondition
InstanceOf: SearchParameter
Title:          "Search on Long term condition flag"
Description:    "Allows the client to retrieve only the Conditions marked as 'long term'"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166#NZ

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Long term condition search</div>"

* url = "http://hl7.org.nz/fhir/hpi/SearchParameter/long-term-condition"
* name = "LongTermCondition"

* status = #draft
* description = "Allows the client to retrieve only the Conditions marked as 'long term'"
* code = #ltc
* base = #Condition
* type = #token
