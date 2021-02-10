Extension: NzepsLongTermMedication
Id: nzeps-long-term-medication
Description: "If true, then this is a long term MedicationRequest. The extension is defined external to this IG, but included for completeness."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "MedicationRequest"

* value[x] only boolean


