
Alias: $example = http://cf/ex

Instance:   medTechCapabilityStatement
InstanceOf: CapabilityStatement
Title:          "CapabilityStatement"
Description:    "Represents API exposed by medTech"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166#NZ

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>medTech capabilities</div>"

* name = "medTech_CapabilityStatement"
* title = "Capability Statement describing medTech FHIR APIs"
* url = "http://hl7.org.nz/fhir/ig/medtech"
* description = """
This is the computable resource that describes the FHIR compliant RESTful endpoint exposed by the ALEX infrastructure

Note that all API interactions will be routed to a single Practice Management System as ALEX is effectively
a facade layer in front of each PMS - ie it is not an aggregator accross different PMS systems. This means that if
there is data about a single patient in different PMS's tthen a call will be required to each one to retrieve all
the data. It is the responsibility of the client to perform any aggregation and de-duplication.

Refer to the spec for details on the [API](http://hl7.org/fhir/http.html) and 
[search](http://hl7.org/fhir/search.html), though note that this API supports only a subset of the defined queries.

"""

* date = "2020-04-01"
* status = #draft
* kind = #instance
* fhirVersion = #4.0.1
* format = #json
* format[1] = #xml

* implementation.description = "The medTech endpoint"
* implementation.url = "https://medtech.com/alex"

* rest.mode = #server


// ============== The Patient endpoint
* rest.resource.type = #Patient
* rest.resource.documentation = """
The [Patient](http://hl7.org/fhir/patient.html) resource represents patient demographics.


"""

* rest.resource.interaction.code = #search-type

//* rest.resource.interaction.extension.url = $example
//* rest.resource.interaction.extension.extension['value'].valueString = "test"


//read by id
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a Patient resource by Id."


* rest.resource.searchParam.name = "name"
* rest.resource.searchParam.type = #string
//* rest.resource.searchParam.documentation = "> [host]/Patient?name='doe'"

* rest.resource.searchParam[1].name = "family"
* rest.resource.searchParam[1].type = #string
* rest.resource.searchParam[1].documentation = "Not case sensitive"

* rest.resource.searchParam[2].name = "birthDate"
* rest.resource.searchParam[2].type = #string
* rest.resource.searchParam[2].documentation = "Not case sensitive"


* rest.resource.searchParam[3].name = "identifier"
* rest.resource.searchParam[3].type = #token
* rest.resource.searchParam[3].documentation = "If the system is not supplied, then the NHI is assumed"


* rest.resource.operation.name = "summary"
* rest.resource.operation.definition = "http://hl7.org/fhir/OperationDefinition/Patient-summary"
* rest.resource.operation.documentation = """
Returns the IPS document for the patient. Only supported as a parameter against patient, using the NHI
as the query parameter - eg

[host]/Patient/$summary?identifier=https://standards.digital.health.nz/ns/nhi-id|WER4568

The system value should be included, though the NHI will be assumed if it is absent.

"""


// =============== The Condition endpoint
* rest.resource[1].type = #Condition
* rest.resource[1].documentation = """

The [Condition](http://hl7.org/fhir/condition.html) resource is used to represent patient problems

"""

* rest.resource[1].interaction.code = #search-type
* rest.resource[1].interaction.documentation = """

how to do 'since'
"""

//read by id
* rest.resource[1].interaction.code = #read //[host]/Condition/{id}  [host]/Condition?_id={id}

//read by NHI
* rest.resource[1].searchParam.name = "patient"
* rest.resource[1].searchParam.type = #reference
* rest.resource[1].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/Condition?patient.identifier={system|value}

If the system is absent, the NHI is assumed

There is also support for a chained query on patient id with the syntax:
[host]/Condition?patient._id = {id} where {id} is the patients id



"""

* rest.resource[1].searchParam[1].name = "clinical-status"
* rest.resource[1].searchParam[1].type = #token
* rest.resource[1].searchParam[1].documentation = """
The clinical status of the Condition. Only 'active' or 'inactive' values are supported
"""

* rest.resource[1].searchParam[2].name = "long-term-condition"
* rest.resource[1].searchParam[2].type = #token
* rest.resource[1].searchParam[2].definition = "http://hl7.org.nz/fhir/SearchParameter/long-term-condition"
* rest.resource[1].searchParam[2].documentation = """
Whether the Condition has been marked by the Practitioner as a long term one. This is indicated
in the resource as an extension.
"""

// ============== The MedicationRequest endpoint
* rest.resource[2].type = #MedicationRequest
* rest.resource[2].documentation = """
These are the FHIR representation of prescriptions in medTech

"""

//read by id
* rest.resource[2].interaction.code = #read

//search 
* rest.resource[2].interaction[1].code = #search-type
* rest.resource[2].interaction[1].documentation = """

"""
* rest.resource[2].searchParam.name = "patient"
* rest.resource[2].searchParam.type = #reference
* rest.resource[2].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/MedicationRequest?patient.identifier={system|value}

If the system is absent, the NHI is assumed

There is also support for a chained query on patient id with the syntax:
[host]/MedicationRequest?patient._id = {id} where {id} is the patients id

"""

* rest.resource[2].searchParam[1].name = "_security"
* rest.resource[2].searchParam[1].type = #token

* rest.resource[2].searchParam[1].documentation = """
By default, MedicationRequest resources marked as confidential will not be retuned in a query. This parameter allows a user to specify that they want the confidential records. There are security and provacy constraints that must be met as well.

"""

* rest.resource[2].searchParam[2].name = "status"
* rest.resource[2].searchParam[2].type = #token
* rest.resource[2].searchParam[2].documentation = """
By default, prescriptions that are not active will not be returned. This search parameter allows for non-active prescriptions to be returned - specifically through the :not modifier

"""

* rest.resource[2].searchParam[3].name = "long-term-medication"
* rest.resource[2].searchParam[3].type = #token
* rest.resource[2].searchParam[3].definition = "http://hl7.org.nz/fhir/hpi/SearchParameter/long-term-medication"
* rest.resource[2].searchParam[3].documentation = """
This is a search for MedicationRequests that have the 'long-term-medication' extension set to true. It
is defined by a custom search parameter

"""




// ============== The Observation endpoint
* rest.resource[3].type = #Observation
* rest.resource[3].documentation = """
Observations are used in 2 main ways: as the details for lab results (such as a haemoglobin result)
and for screening data.

"""

* rest.resource[3].interaction.code = #read

* rest.resource[3].interaction[1].code = #search-type
* rest.resource[3].interaction.documentation = """

"""


//read by NHI
* rest.resource[3].searchParam.name = "patient"
* rest.resource[3].searchParam.type = #reference
* rest.resource[3].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/Condition?patient.identifier={system|value}

If the system is absent, the NHI is assumed

There is also support for a chained query on patient id with the syntax:
[host]/Observation?patient._id = {id} where {id} is the patients id

A query on the Observation identifier is NOT supported
"""

//read by date
* rest.resource[3].searchParam[1].name = "date"
* rest.resource[3].searchParam[1].type = #date
* rest.resource[3].searchParam[1].documentation = """
The API also supports searching by date range - ge (Greater than or equal to)
and le (less than or equal to)
"""


// ============== The Encounter endpoint
* rest.resource[4].type = #Encounter

* rest.resource[4].interaction.code = #read

* rest.resource[4].interaction[1].code = #search-type
* rest.resource[4].interaction.documentation = """

"""

//read by NHI
* rest.resource[4].searchParam.name = "patient"
* rest.resource[4].searchParam.type = #reference
* rest.resource[4].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/Encounter?patient.identifier={system|value}

If the system is absent, the NHI is assumed
There is also support for a chained query on patient id with the syntax:
[host]/Encounter?patient._id = {id} where {id} is the patients id
"""

//read by date
* rest.resource[4].searchParam[1].name = "date"
* rest.resource[4].searchParam[1].type = #date
* rest.resource[4].searchParam[1].documentation = """
The API also supports searching by date range - ge (Greater than or equal to)
and le (less than or equal to)
"""



// ============== The Immunization endpoint
* rest.resource[5].type = #Immunization

* rest.resource[5].interaction.code = #read

* rest.resource[5].interaction[1].code = #search-type
* rest.resource[5].interaction.documentation = """

"""

//read by NHI
* rest.resource[5].searchParam.name = "patient"
* rest.resource[5].searchParam.type = #token
* rest.resource[5].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/Immunization?patient.identifier={system|value}
If the system is absent, the NHI is assumed

There is also support for a chained query on patient id with the syntax:
[host]/Immunization?patient._id = {id} where {id} is the patients id

"""

/*
//read by date
* rest.resource[5].searchParam[1].name = "date"
* rest.resource[5].searchParam[1].type = #date
* rest.resource[5].searchParam[1].documentation = """
The API also supports searching by date range - ge (Greater than or equal to)
and le (less than or equal to)
"""

*/

// ============== The DiagnosticReport endpoint
* rest.resource[6].type = #DiagnosticReport


* rest.resource[6].interaction.code = #read
* rest.resource[6].interaction[1].code = #search-type
* rest.resource[6].interaction.documentation = """
The search queries support the _include value of 'result' to allow the Observation resources to be returned in the same
call
"""
//read by NHI
* rest.resource[6].searchParam.name = "patient"
* rest.resource[6].searchParam.type = #reference
* rest.resource[6].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/DiagnosticReport?patient.identifier={system|value}

If the system is absent, the NHI is assumed
There is also support for a chained query on patient id with the syntax:
[host]/DiagnosticReport?patient._id = {id} where {id} is the patients id
"""

//read by date
* rest.resource[6].searchParam[1].name = "date"
* rest.resource[6].searchParam[1].type = #date
* rest.resource[6].searchParam[1].documentation = """
The API also supports searching by date range - ge (Greater than or equal to)
and le (less than or equal to)
"""
* rest.resource[6].searchInclude = "result"

// ============== The AllergyIntolerance endpoint
* rest.resource[7].type = #AllergyIntolerance

* rest.resource[7].interaction.code = #read
* rest.resource[7].interaction[1].code = #search-type
* rest.resource[7].interaction.documentation = """

"""



//read by NHI
* rest.resource[7].searchParam.name = "patient"
* rest.resource[7].searchParam.type = #reference
* rest.resource[7].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/AllergyIntolerance?patient.identifier={system|value}

If the system is absent, the NHI is assumed
There is also support for a chained query on patient id with the syntax:
[host]/AllergyIntolerance?patient._id = {id} where {id} is the patients id
"""

* rest.resource[7].searchParam[1].name = "clinical-status"
* rest.resource[7].searchParam[1].type = #token
* rest.resource[7].searchParam[1].documentation = """
The clinical status of the Condition. Only 'active' or 'inactive' values are supported
"""



// ============== The Schedule endpoint
* rest.resource[8].type = #Schedule

* rest.resource[8].documentation = """
Represents a schedule of appointment slots (eg the slots for a morning session).
This endpoint may noyt be supported
"""

* rest.resource[8].interaction.code = #search-type

* rest.resource[8].interaction.code = #search-type
* rest.resource[8].interaction.documentation = """

"""



// ============== The Slot endpoint
* rest.resource[9].type = #Slot

* rest.resource[9].documentation = """
Represents a single possible appointment slot that is available for booking.

"""

* rest.resource[9].interaction.code = #search-type
* rest.resource[9].interaction.documentation = """

"""



* rest.resource[9].searchParam[0].name = "schedule"
* rest.resource[9].searchParam[0].type = #reference
* rest.resource[9].searchParam[0].documentation = """
Used to allow the practitioner to be specified in the query using a chained request:

[host]/Slot?schedule.practitioner.identifer = {}
"""


* rest.resource[9].searchParam[1].name = "start"
* rest.resource[9].searchParam[1].type = #token
* rest.resource[9].searchParam[1].documentation = """
Allows the user to specify the date for which available slots are to be returned. A range can be
specified using the greater than / less than modifiers
"""

* rest.resource[9].searchParam[2].name = "status"
* rest.resource[9].searchParam[2].type = #token
* rest.resource[9].searchParam[2].documentation = """
Allows the user to specify the status of the slot to be specified in the query. Generally this will 
be set to 'free' to return only available slots.
"""


// ============== The Appointment endpoint
* rest.resource[10].type = #Appointment
* rest.resource[10].documentation = """
Represents an appointment for a Patient with a Practitioner.
"""

* rest.resource[10].searchParam[0].name = "patient"
* rest.resource[10].searchParam[0].type = #reference
* rest.resource[10].searchParam[0].documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/Appointment?patient.identifier={system|value}

If the system is absent, the NHI is assumed
There is also support for a chained query on patient id with the syntax:
[host]/Appointment?patient._id = {id} where {id} is the patients id
"""

* rest.resource[10].searchParam[1].name = "date"
* rest.resource[10].searchParam[1].type = #date
* rest.resource[10].searchParam[1].documentation = """
Return all appointments over a date range (using ge / le modifiers). The patient must also be included.
"""


* rest.resource[10].interaction.code = #search-type
* rest.resource[10].interaction.documentation = """
Allows appointments to be queried. Note that the are security / privacy constraints that will
govern which appointments can be returned to which client.
"""



* rest.resource[10].interaction[1].code = #create
* rest.resource[10].interaction[1].documentation = """
Allows a new appointment to be created. The server may choose not to allow the Appointment to be
made - for example if the slot is no longer available.
"""

* rest.resource[10].interaction[2].code = #delete
* rest.resource[10].interaction[2].documentation = """
Allows an existing appointment to be removed. The Appointment id must be known, so a client will generally
need to search for appointments for a patient to get the id before deleting.

There will be security mechanisms to ensure that deletion is controlled.
"""

// ============== The DocumentReference endpoint
* rest.resource[11].type = #DocumentReference
* rest.resource[11].documentation = """
Used to represent clinical notes and external documents such as Discharge Summaries. For a clincial note, the note will be 
in the content.attachment.data element. For external files the url will be a reference to a Binary endpoint from where the
document can be retrieved.
"""

* rest.resource[11].interaction.code = #read
* rest.resource[11].interaction[1].code = #search-type
* rest.resource[11].interaction[1].documentation = """

"""
//read by NHI
* rest.resource[11].searchParam.name = "patient"
* rest.resource[11].searchParam.type = #reference
* rest.resource[11].searchParam.documentation = """
The API supports a chained query on the patient identifier (NHI) 
This has the syntax:
[host]/DocumentReference?patient.identifier={system|value}

If the system is absent, the NHI is assumed

There is also support for a chained query on patient id with the syntax:
[host]/Appointment?patient._id = {id} where {id} is the patients id
"""

* rest.resource[11].searchParam[1].name = "_security"
* rest.resource[11].searchParam[1].type = #token

* rest.resource[11].searchParam[1].documentation = """
By default, DocumentReference resources marked as confidential will not be retuned in a query. This parameter allows a user to specify that they want the confidential records. There are security and privacy constraints that must be met as well.

"""

//============= The Binary endpoint
* rest.resource[12].type = #Binary
* rest.resource[12].documentation = """
Used to return documents such as PDF files. Generally in response to a url contained in a DocumentReference
that refers to a discharge summary or other external document.
"""

* rest.resource[12].interaction.code = #read

// ============== The Practitioner endpoint

* rest.resource[13].interaction.code = #search-type
* rest.resource[13].interaction.documentation = """

"""


* rest.resource[13].type = #Practitioner
* rest.resource[13].supportedProfile = "http://hl7.org.nz/healthalliance/medTechPractitioner"
* rest.resource[13].documentation = """
Practitioner query

"""

//read by id
* rest.resource[13].interaction.code = #read
* rest.resource[13].interaction.documentation = "Used to retrieve a Practitioner resource by Id."

//search by various parameters
* rest.resource[13].interaction[1].code = #search-type
* rest.resource[13].interaction[1].documentation = ""

//Search by name. todo - may need add docs about dependencies - eg dob as well
* rest.resource[13].searchParam.name = "name"
* rest.resource[13].searchParam.type = #string
* rest.resource[13].searchParam.documentation = "Not case sensitive"

//identifier 
* rest.resource[13].searchParam[1].name = "identifier"
* rest.resource[13].searchParam[1].type = #token
* rest.resource[13].searchParam[1].documentation = "Will only return active identifiers"

//family 
* rest.resource[13].searchParam[2].name = "family"
* rest.resource[13].searchParam[2].type = #string
//* rest.resource.searchParam[2].documentation = ""



