/**
 * Initializes mock window and document objects from JSDOM.
 * Useful for reusing DOM code on the backend
 */


let init: unit => unit =[%raw
  {js|
  function() {
    "if (!global.document) {\n  var JSDOM = require('jsdom').JSDOM;\n  var dom = new JSDOM('');\n  global.window = dom.window;\n  global.document = dom.window.document;\n}"
  }
|js}
];
