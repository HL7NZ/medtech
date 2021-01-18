Instance: cfsb1610999217416
InstanceOf: Condition
Description: "Asthma as a long term condition"
Usage: #example
 

 // Reference to Patient: john doe
* subject = Reference(cfsb1610999277413)

* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension[0].valueBoolean = true

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* code = http://snomed.info/sct#195967001 "Asthma"
* severity = http://snomed.info/sct#255604002 "Mild"
