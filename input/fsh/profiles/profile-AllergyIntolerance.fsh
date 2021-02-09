Alias: $ltc = http://hl7.org.nz/fhir/StructureDefinition/long-term-condition
Alias: $highlight = http://hl7.org.nz/fhir/StructureDefinition/highlight-condition

Profile:        MtAllergyIntolerance
Parent:         AllergyIntolerance
Id:             mtAllergyIntolerance
Title:          "AllergyIntolerance profile"
Description:    "The AllergyIntolerance resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtAllergyIntolerance"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "The AllergyIntolerance resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTech AllergyIntolerance profile</div>"

// not supported
* criticality 0..0
* encounter 0..0
* recordedDate 0..0
* recorder 0..0
* encounter 0..0
* lastOccurrence 0..0
* reaction 0..0