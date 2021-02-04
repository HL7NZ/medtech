Profile:        MtDocumentReference
Parent:         DocumentReference
Id:             mtDocumentReference
Title:          "DocumentReference profile"
Description:    "The DocumentReference resource exposed by the ALEX infrastructure."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mtDocumentReference"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "The DocumentReference resource exposed by the ALEX infrastructure."
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>medtech DocumentReference</div>"

// elements not supported
* masterIdentifier 0..0
* identifier 0..0
* docStatus 0..0
* author 0..0
* authenticator 0..0
* custodian 0..0
* relatesTo 0..0
* description 0..0
* securityLabel 0..0
* context 0..0
