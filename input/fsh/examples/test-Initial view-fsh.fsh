// Automatically generated from graphBuilder.
// Project: id1611641697630 (test)
// View: Initial view

Instance: cfsb1611641719249
InstanceOf: Patient
Description: "Patient1"
Usage: #example
 
* name.given = "John"
* name.family = "Doe"

Instance: cfsb1611641730402
InstanceOf: Condition
Description: "Condition1"
Usage: #example
 
// Reference to Patient: Patient1
* subject = Reference(cfsb1611641719249)
* code = http://snomed.info/sct#195967001 "Asthma"

