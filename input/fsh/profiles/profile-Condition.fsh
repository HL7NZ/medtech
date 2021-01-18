Alias: $ltc = http://hl7.org.nz/fhir/StructureDefinition/long-term-condition

Profile:        MtCondition
Parent:         Condition
Id:             mtCondition
Title:          "Condition profile"
Description:    "The Condition resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtCondition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "The Condition resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTechprofile</div>"

// elements not supported
* identifier 0..0
* verificationStatus 0..0
* category 0..0
* bodySite 0..0
* encounter 0..0
* abatement[x] 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0

//always present
* code 1..1
* subject 1..1
* recordedDate 1..1
* recorder 1..1

* extension contains
    $ltc named long-term-condition 0..1