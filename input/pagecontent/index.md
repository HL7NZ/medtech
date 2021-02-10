Describes the API exposed by Medtech on behalf of their Primary Care systems.

There are 3 main parts to  the API.

(updated wednesday)

### Patient Summary

A custom operation (that may become a standard) that is applied to a patient that will generate a FHIR document that is a summary of the patients status at that point in time. This summary is compliant with the [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/index.html) Implementation Guide, but adds a number of additional resources - Encounter and DocumentReference to the set defined in the IPS.
* The Encounter is used to represent a contact between the Patient and the GP Practice
* The DocumentReference has clinical notes and references to external documents like discharge summaries.

The patient summary can be requested at any time, but always represents a complete summary at that point in time - there is no 'differential' function. If only a subset of the information is needed, or if you want to specify a date range then use the REST APIs.

Note that medication information is represented in the Summary by a [MedicationStatement](http://hl7.org/fhir/medicationstatement.html) resource (as it summarizes the medications that a patient is taking), whereas the REST API exposes a [MedicationRequest](http://hl7.org/fhir/medicationrequest.html) resource that represents a prescription.


### REST APIs

These are the resource specific endpoints that can be used to retrieve specific resources. Currently, these are all read-only API's and can be used to retrieve the matching resources - often since some particular date. 

Resources that are supported through the API are:

* [Patient](capabilityStatement.html#patient) 
* [MedicationRequest](capabilityStatement.html#medicationrequest)
* [Condition](capabilityStatement.html#condition) 
* [AllergyIntolerance](capabilityStatement.html#allergyintolerance)
* [Observation](capabilityStatement.html#observation)
* [Encounter](capabilityStatement.html#encounter)
* [Immunization](capabilityStatement.html#immunization)
* [DocumentReference](capabilityStatement.html#documentreference)


### Appointment interaction.

Described further in the [general](general.html) tab, this supports the searching and creation of Appointments for a patient.