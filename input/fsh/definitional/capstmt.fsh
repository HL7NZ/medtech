
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
* description = """
This is the computable resource that describes the RESTful endpoint
"""

* date = "2020-04-01"
* status = #draft
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

* implementation.description = "The medTech endpoint"
* implementation.url = "http://moh.org.nz/medTech/fhir"

* rest.mode = #server




// ============== The Practitioner endpoint

/* #region Practitioner */


* rest.resource.type = #Practitioner
* rest.resource.supportedProfile = "http://hl7.org.nz/healthalliance/medTechPractitioner"
* rest.resource.documentation = """
Practitioner query

"""

//read by id
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a Practitioner resource by Id."

//search by various parameters
* rest.resource.interaction[1].code = #search-type
* rest.resource.interaction[1].documentation = ""

//Search by name. todo - may need add docs about dependencies - eg dob as well
* rest.resource.searchParam.name = "name"
* rest.resource.searchParam.type = #string
* rest.resource.searchParam.documentation = "Not case sensitive"

//identifier 
* rest.resource.searchParam[1].name = "identifier"
* rest.resource.searchParam[1].type = #token
* rest.resource.searchParam[1].documentation = "Will only return active identifiers"

//family 
* rest.resource.searchParam[2].name = "family"
* rest.resource.searchParam[2].type = #string
//* rest.resource.searchParam[2].documentation = ""

/* #endregion */

