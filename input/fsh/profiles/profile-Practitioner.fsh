Profile:        MtPractitioner
Parent:         Practitioner
Id:             mtPractitioner
Title:          "Practitioner profile"
Description:    "The Practitioner resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtPractitioner"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "The Practitioner resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTech Practitioner profile</div>"

// elements not supported
* photo 0..0
* communication 0..0