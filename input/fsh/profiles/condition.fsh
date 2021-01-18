Alias: $ltc = http://hl7.org.nz/fhir/StructureDefinition/long-term-condition

Profile:        MtCondition
//Parent:         CommonPatient
Parent:         Patient
Id:             mtCondition
Title:          "Condition profile"
Description:    "The Condition resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtCondition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "The Condition resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTechprofile</div>"

* extension contains
    $ltc named long-term-condition 0..1