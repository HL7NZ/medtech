

Instance: cfsb1610999277413
InstanceOf: mtPatient
Description: "Patient1"
Usage: #example
 
* name.given = "John"
* name.family = "Doe"
* gender = #male
* birthDate = "1989-01-18"

//enrolled from 2020 5to 2022
* extension[enrolment].extension[period].valuePeriod.start = "2020-01-01"
* extension[enrolment].extension[period].valuePeriod.end = "2022-01-01"

* extension[enrolment].extension[code].valueCodeableConcept = http://systemofcode#ok "OK enrolment"

* extension[enrolment].extension[hpiNumber].valueIdentifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* extension[enrolment].extension[hpiNumber].valueIdentifier.value = "abc1234"


