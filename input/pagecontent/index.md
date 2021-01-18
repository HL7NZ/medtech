Describes the API exposed by Medtech on behalf of their Primary Care systems.

There are 3 main parts to  the API.

### Patient Summary

A custom operation (that may become a standard) that is applied to a patient that will generate a FHIR document that is a summary of the patients status at that point in time. This summary is compliant with the [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/index.html) Implementation Guide, but adds a number of additional resources - Encounter and DocumentReference to the set defined in the IPS.
* The Encounter is used to represent a contact between the Patient and the GP Practice
* The DocumentReference has clinical notes and references to external documents like discharge summaries.

The patient summary can be requested at any time, but always represents a complete summary at that point in time - there is no 'differential' function. If only a subset of the information is needed, or if you want to specify a date range then use the REST APIs.



### REST APIs

These are the resource specific endpoints that can be used to retrieve specific resources. Currently, these are all read-only API's and can be used to retrieve the matching resources - often since some particular date. These all use a [parameterized data search](http://hl7.org/fhir/search.html#date).

Resources that are supported are:

* [Patient](http://hl7.org/fhir/patient.html)
* [Condition](http://hl7.org/fhir/condition.html)
* [AllergyIntolerance](http://hl7.org/fhir/allergyintolerance.html)
* [Observation](http://hl7.org/fhir/observation.html)
* [Encounter](http://hl7.org/fhir/encounter.html)
* [Immunization](http://hl7.org/fhir/immunization.html)
* [DocumentReference](http://hl7.org/fhir/documentreference.html)


### Appointment interaction.

Described further in the [general](general.html) tab, this supports the searching and creation of Appointments for a patient.