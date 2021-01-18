Extension: PatientEnrolment
Id: patient-enrolment
Description: "Additional authorizations that a practitioner is authorized to perform"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/patient-enrolment"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"

* extension contains
    period 1..1 and
    code 1..1 and
    hpiNumber 1..1

// definitions of sub-extensions

* extension[period].url = "period" (exactly)
* extension[period] ^definition = "The period the enrolment is effective"
* extension[period].value[x] only Period

* extension[code].url = "code" (exactly)
* extension[code] ^definition = "A code identifying the type of enrolment"
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/tbd (preferred)

* extension[hpiNumber].url = "hpiNumber" (exactly)
* extension[hpiNumber] ^definition = "The HPI number of the Practitioner"
* extension[hpiNumber].value[x] only Identifier