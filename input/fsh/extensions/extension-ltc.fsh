Extension: LongTermCondition
Id: long-term-condition
Description: "If true, then this is a long term condition"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Condition"

* extension.value[x] only boolean


