#!/usr/bin/env node

/** Make the list of example API calls
 * Move to scripts folder eventually
 * 
 * 
 */

let fs = require('fs');
let igRoot = "/Users/wendy/IG/medtech/";
let sourceFile = igRoot + "artifacts/sampleQueries.json"

let contents = fs.readFileSync(sourceFile).toString();

//console.log(contents)
return
let ex = JSON.parse(contents)
ex.forEach(function(examples){
    console.log('--',examples)
    let type = examples.type

    examples.examples.forEach(function(query) {
        console.log(query.qry, query.doc)

    })
})