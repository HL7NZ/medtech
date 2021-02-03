Extension: LongTermMedication
Id: long-term-medication
Description: "If true, then this is a long term MedicationRequest"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-medication"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "MedicationRequest"

* value[x] only boolean


