Instance: summary
InstanceOf: OperationDefinition
Description: "Patient Summary"
Usage: #example

//https://chat.fhir.org/#narrow/stream/207835-IPS/topic/Query.20for.20IPS.20retrieval
 
* name = "PatientSummary"
* url = "http://hl7.org/fhir/OperationDefinition/Patient-summary"
* title = "An operation that will return a Patient Summary document"
* status = #draft
* kind = #operation
* date = "2021-01-12"
* code = #summary
* description =  """
The summary operation asks the server to return the latest appropriate summary for the patient. 
The patient is either

* explicitly identified by the id of the patient resource
* implicitly identified as the only patient in scope due to security/context
* specified by other additional (unspecified here) parameters (or do we specify the identifier parameter?)

This operation returns a bundle (type = document) for single patient.

The operation asks for the latest appropriate summary, whether that already exists, 
or must be newly generated. Unless otherwise specified, the server has discretion to 
choose how to fulfill the request. We anticipate that there will be a profusion of 
business practices around currency/attestation, and therefore variance in parameters around that. 
If some consistency emerges, HL7 would consider adding additional parameters to the base definition
"""

* comment = """
This Operation Definition is proposed as an HL7 one, based on the needs of this (and other) Implementation Guides
We anticipate that there will be a profusion of business practices around currency/attestation, and therefore variance in parameters around that. If some consistency emerges, HL7 would consider adding additional parameters to the base definition



IPS will define a profile on Bundle with the URL in the example above, so that an IPS can be reqested. In the absence of a profile parameter, server has discretion to construct/return a summary of it's choice

"""

* instance = true
* type = true
* system = false
* resource = #Patient

* parameter[0].name = #identifier
* parameter[0].type = #Identifier
//* parameter[0].searchType = #uri
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = """
The identifier of the patient which is the target. Used when the operation is invoked
against the Patient type, ignored if invoked against a Patient instance
"""




* parameter[1].name = #profile
* parameter[1].type = #uri
//* parameter[1].searchType = #uri
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = """

"""


* parameter[2].name = #graph
* parameter[2].type = #uri
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = """
Used when the url for a GraphDefinition resource is passed in that 
explicitely defines the contents of the 
bundle returned. 
"""
