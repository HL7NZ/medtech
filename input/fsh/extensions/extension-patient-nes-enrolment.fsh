Extension: PatientNESEnrolment
Id: patient-nes-enrolment
Description: "An extension applied to PractitionerRole to indicate that itr is referring to the Patient enrollment with a GP Practice under the NES (National Enrolment Service)"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/patient-nes-enrolment"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only boolean