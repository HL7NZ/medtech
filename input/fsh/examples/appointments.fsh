Instance: prov1
InstanceOf: Practitioner
Description: "Provider 1"
Usage: #example

* identifier.system = "http://clinfhir.com"
* identifier.value = "abc"

Instance: sched1
InstanceOf: Schedule
Description: "Schedule1"
Usage: #example


* actor = Reference(prov1)
* planningHorizon.start = "2020-01-08T09:00:00Z"
* planningHorizon.end = "2020-01-08T12:00:00Z"

Instance: slot1
InstanceOf: Slot
Description: "Slot1"
Usage: #example

* schedule = Reference(sched1)
* status = #free
* start = "2020-01-08T10:00:00Z"
* end = "2020-01-08T10:15:00Z"

Instance: slot2
InstanceOf: Slot
Description: "Slot1"
Usage: #example

* schedule = Reference(sched1)
* status = #free
* start = "2020-01-08T11:00:00Z"
* end = "2020-01-08T11:15:00Z"