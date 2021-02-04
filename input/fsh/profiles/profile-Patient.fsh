Alias: $enrolment = http://hl7.org.nz/fhir/StructureDefinition/patient-nes-enrolment
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity

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
* active 0..0
* deceased[x] 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* communication 0..0
* link 0..0



//enrolment extension
* extension contains
    $enrolment named enrolment 0..1 and
    $ethnicity named ethnicity 0..6