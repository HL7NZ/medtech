This page has general notes about the API from a business rather than technical perspective.

### Clincial Summary

The summary is retrieved using a custom operation - for example

> [host]/Patient/$summary?patient.identifier = https://standards.digital.health.nz/ns/nhi-id|{nhi number}

### Clinical Notes

Clinical (Consultation) notes are returned as [DocumentReference](http://hl7.org/fhir/documentreference.html) resources, with the note itself in the content.attachment.data element as a base64 encoded string.

The DocumentReference resource is also used to refer to external documents such as discharge summaries. In this case the location of the external document is held in the content.attachment.url element - generally a reference to the [Binary](http://hl7.org/fhir/binary.html) endpoint. The client can retrieve that document directly if needed.

### Appointments

The APi supports appointment listing, creating and deletion. 

#### Listing appointments for a patient

This is done using a search on [Appointment](http://hl7.org/fhir/appointment.html), using the patient parameter. 

> GET [host]/Appointment?patient.identifier = {system}|{value}

A bundle of matching appointments (which may be empty) is returned.

#### Creating an appointment

This is generally performed in 2 stages.

First the client determines which appointment slots are available to be booked. This is done by
a query against the [Slot](http://hl7.org/fhir/slot.html) endpoint, using a chained parameter on schedule to indicate the Practitioner desired. For example

> GET [host]/Slot?schedule:actor.identifier={}&date=ge{date}&date=le{date}&status=free

Note that not including the status parameter would result in all slots over the period being returned, which is generally not desired.

Next, the actual appointment is created. This is done by creating an Appointment resource with the status element set to 'proposed' and POSTing it to the Appointment endpoint. 
* If the appointment can be created, then the updated Appointment (status=booked) will be returned with an http status code of 201 (created)
* If the appointment cannot be created (for example if there is insufficient detail in the Appointment resource, or the requested time has been booked by another) then the query will be rejected with an http status code of 422 (Unprocessable entity)

#### Cancelling (deleting) an appointment

Appointments are cancelled using the DELETE verb. The id of the appointment must be known, so generally a search for the patient appointments must be done first.

### Lab data

Laboratory information is held in 2 resources:
* The DiagnosticReport contains 'meta' information about the lab test such as the date it was done, who ordered it, the lab etc
* The actual results are in Observation resources. There is a reference from the DiagnosticReport to the Observation

To retrieve lab data, make a query against DiagnosticReport including the _include parameter to include the Observation in the resulting Bundle. eg

> [host]/DiagnosticReport?patient.identifier = {nhi}&_include = result

(This also uses a chained identifier parameter on Patient to avoid needing the Patient id)

### Screening data

Screening data is represented as Observation resources. 