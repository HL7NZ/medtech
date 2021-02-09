// Automatically generated from graphBuilder.
// Project: medtech (id1610999208856)
// View: Common examples

Instance: cfsb1610999217416
InstanceOf: Condition
Description: "Asthma"
Usage: #example
 
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension[0].valueBoolean = true

* extension[1].url = "http://hl7.org.nz/fhir/StructureDefinition/highlight-condition"
* extension[1].valueBoolean = true

// Reference to Patient: john doe
* subject = Reference(cfsb1610999277413)

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* code = http://snomed.info/sct#195967001 "Asthma"
* severity = http://snomed.info/sct#255604002 "Mild"


* recordedDate = "2010-01-01"


//from spec doc (page 78)

Instance: cfsb1610999277413
InstanceOf: Patient
Description: "Patient Mouse"
Usage: #example

* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "AAB2456"
 
* name.given = "Patient"
* name.family = "Mouse"

* gender = #male
* birthDate = "1968-12-14"


* address.text = "South East Auckland"
* address.type = #physical
* address.line = "South"
* address.line[1] = "East"
* address.line[2] = "Auckland"
* address.city = "Auckland"
* address.postalCode = "1234"

* address[1].text = "South East Auckland"
* address[1].type = #postal
* address[1].line = "South"
* address[1].line[1] = "East"
* address[1].line[2] = "Auckland"
* address[1].city = "Auckland"
* address[1].postalCode = "1234"



* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#U "Unknown"
* contact.name.given = "FIRSTNAME"
* contact.name.family = "SURNAME"
* contact.telecom.system = #phone
* contact.telecom.value = "021873313"
* contact.telecom.use = #home
* contact.telecom[1].system = #phone
* contact.telecom[1].value = "021837312"
* contact.telecom[1].use = #work
* contact.address.type = #physical
* contact.address.line = "Raheja Apartments"
* contact.address.line = "2nd cross"
* contact.address.line = "Suburb"
* contact.address.city = "City"



Instance: cfsb1612836756572
InstanceOf: MedicationRequest
Description: "Largactil prescription"
Usage: #example
 
// Reference to Patient: Patient Mouse
* subject = Reference(cfsb1610999277413)

* status = #active
* intent = #order
* medicationCodeableConcept = http://snomed.info/sct#387258005 "Chlorpromazine"
* authoredOn = "2020-10-20"

* dispenseRequest.numberOfRepeatsAllowed = 15
* dispenseRequest.quantity.value = 5
* dispenseRequest.quantity.unit = "tab"


 // Reference to Practitioner: Gerald GP
* requester = Reference(cfsb1612836952016)

 // Reference to Practitioner: Gerald GP
* recorder = Reference(cfsb1612836952016)

Instance: cfsb1612836952016
InstanceOf: Practitioner
Description: "Gerald GP"
Usage: #example

* name.given = "Gerald"
* name.family = "GP"

 

Instance: cfsb1612837065339
InstanceOf: Observation
Description: "Blood Pressure"
Usage: #example
 
// Reference to Patient: Patient Mouse
* subject = Reference(cfsb1610999277413)
* status = #final
* code = http://loinc.org#85354-9 "Blood pressure"

 // Reference to Practitioner: Gerald GP
* performer = Reference(cfsb1612836952016)
* effectiveDateTime = "2021-02-07T13:28:17Z"

//systolic
* component.code = http://loinc.org#8480-6 "Systolic"
* component.valueQuantity.value = 120
* component.valueQuantity.unit = "mm[Hg]"

//diastolic
* component[1].code = http://loinc.org#8462-4 "Diastolic"
* component[1].valueQuantity.value = 80
* component[1].valueQuantity.unit = "mm[Hg]"

Instance: cfsb1612838374459
InstanceOf: Observation
Description: "Creatinine"
Usage: #example
 
// Reference to Patient: Patient Mouse
* subject = Reference(cfsb1610999277413)
* status = #final
* code = http://loinc.org#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"

* effectiveDateTime = "2021-02-07T13:28:17Z"

* valueQuantity.value = 0.9
* valueQuantity.unit = "mg/dL"

