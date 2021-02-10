Profile:        MtMedicationStatement
Parent:         MedicationStatement
Id:             mtMedicationStatement
Title:          "MedicationStatement profile"
Description:    "The MedicationStatement resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MtMedicationStatement"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "The MedicationStatement resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MedTech MedicationStatement profile</div>"

//elements not supported
* basedOn 0..0
* partOf 0..0
* statusReason 0..0
* category 0..0
* context 0..0
* informationSource 0..0
* derivedFrom 0..0
* reasonCode 0..0
* note 0..0
* dosage.sequence 0..0
* dosage.additionalInstruction 0..0
* dosage.patientInstruction 0..0
* dosage.timing 0..0
* dosage.site 0..0
* dosage.route 0..0
* dosage.method 0..0
* dosage.doseAndRate 0..0
* dosage.maxDosePerPeriod 0..0
* dosage.maxDosePerAdministration 0..0
* dosage.maxDosePerLifetime 0..0
