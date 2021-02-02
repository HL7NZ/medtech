#!/usr/bin/env node

/** Make the list of example API calls
 * Move to scripts folder eventually
 * 
 * 
 */

let fs = require('fs');
let igRoot = "/Users/wendy/IG/medtech/";
let sourceFile = igRoot + "artifacts/sampleQueries.json"

let outFile = igRoot + "input/pagecontent/exampleQueries.xml";  // for IG publisher



let ar = []
ar.push("<div xmlns='http://www.w3.org/1999/xhtml'>")

ar.push("<!-- Generated by the makeExamples script -->")

//ar.push("<br/><strong>Examples of API calls</strong><br/><br/>")

//ar.push("<table class='table table-bordered table-hover table-sm'>")
//ar.push("<tr><th>Id</th><th>Url</th><th>Description</th></tr>")



let contents = fs.readFileSync(sourceFile).toString();

//console.log(contents)

let ex = JSON.parse(contents)
console.log(ex)

ex.forEach(function(examples){
    //console.log('--',examples)
    let type = examples.type

    ar.push('<a name="resource'+type+'"> </a>')   
    ar.push("<h3>"+type+"</h3>")

    //ar.push("<br/><strong>Type:"+type+"</strong><br/><br/>")

    examples.examples.forEach(function(query) {

        let q = '[host]/' + type + query.qry
        ar.push("<div>"+ q +"</div>")

        ar.push("<div><em>"+query.doc+"</em></div>")


      
        ar.push("<br/>")
       

    })
})

ar.push ("</div>")
let file = ar.join('\r\n')
fs.writeFileSync(outFile,file);
