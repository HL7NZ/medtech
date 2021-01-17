Instance: cfsb1610747471446
InstanceOf: OperationDefinition
Description: "OperationDefinition1"
Usage: #example

//https://chat.fhir.org/#narrow/stream/207835-IPS/topic/Query.20for.20IPS.20retrieval
 
* name = "PatientSummary"
* title = "An operation that will return a Patient Summary document"
* status = #draft
* kind = #operation
* date = "2021-01-12"
* code = #summary
* description =  """
A summary
"""

* instance = true
* type = false
* system = false
* resource = #Patient
* parameter.name = #graph
* parameter.use = #in
* parameter.min = 0
* parameter.max = "1"
* parameter.documentation = """

"""
* parameter[1].type = #uri
* parameter[1].searchType = #uri

* parameter[1].name = #profile
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = """

"""
* parameter[1].type = #uri
* parameter[1].searchType = #uri


