Alias: $ltm = http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication


Profile:        MtMedicationRequest
Parent:         MedicationRequest
Id:             mtMedicationRequest
Title:          "MedicationRequest profile"
Description:    "The MedicationRequest resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtMedicationRequest"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "The MedicationRequest resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTech MedicationRequest profile</div>"

//elements not supported
* identifier 0..0
* statusReason 0..0
* category 0..0
* priority 0..0
* doNotPerform 0..0
* reported[x] 0..0
* encounter 0..0
* supportingInformation 0..0
* performer 0..0
* performerType 0..0
* reasonCode 0..0
* reasonReference 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* groupIdentifier 0..0
* courseOfTherapyType 0..0
* insurance 0..0
* note 0..0
* dosageInstruction.sequence 0..0
* dosageInstruction.additionalInstruction 0..0
* dosageInstruction.patientInstruction 0..0
* dosageInstruction.timing 0..0
* dosageInstruction.site 0..0
* dosageInstruction.route 0..0
* dosageInstruction.method 0..0
* dosageInstruction.doseAndRate 0..0
* dosageInstruction.maxDosePerPeriod 0..0
* dosageInstruction.maxDosePerAdministration 0..0
* dosageInstruction.maxDosePerLifetime 0..0
* dispenseRequest.initialFill 0..0
* dispenseRequest.dispenseInterval 0..0
* dispenseRequest.validityPeriod 0..0
* dispenseRequest.expectedSupplyDuration 0..0
* dispenseRequest.performer 0..0
* substitution 0..0
* priorPrescription 0..0
* detectedIssue 0..0
* eventHistory 0..0

* status ^short = "This is either active or stopped. Stopped is the equivalent of 'inactive' in medtech"

* extension contains
    $ltm named nzeps-long-term-medication 0..1 