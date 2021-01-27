Alias: $enrolment = http://hl7.org.nz/fhir/StructureDefinition/patient-enrolment

Profile:        MtPatient
Parent:         Patient
Id:             mtPatient
Title:          "Patient profile"
Description:    "The Patient resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mtPatient"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "The patient resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>medtech patient</div>"

//elements not supported
* photo 0..0

//elements supported (for Gordon)
* name 1..*
* name.family 0..1

//enrolment extension
* extension contains
    $enrolment named enrolment 0..1