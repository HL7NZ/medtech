Profile:        MtAppointment
Parent:         Appointment
Id:             mtAppointment
Title:          "Appointment profile"
Description:    "The Appointment resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtAppointment"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "The Appointment resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTech Appointment profile</div>"

//elements not supported
// todo - query on use of requestedPeriod
* identifier 0..0
* cancelationReason 0..0
* serviceCategory 0..0
* serviceType 0..0
* specialty 0..0
* appointmentType 0..0
* reasonCode 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* supportingInformation 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* patientInstruction 0..0
* basedOn 0..0

