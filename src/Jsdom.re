/**
 * Initializes mock window and document objects from JSDOM.
 * Useful for reusing DOM code on the backend
 */


// let init: unit => unit =[%raw
//   {js|
//   function() {
//     "if (!global.document) {\n  var JSDOM = require('jsdom').JSDOM;\n  var dom = new JSDOM('', { resources: 'usable', runScripts: 'outside-only' ,runScripts: 'dangerously' });\n  global.window = dom.window;\n  global.document = dom.window.document;\n}"
//   }
// |js}
// ];
let init: unit => unit =[%raw
  {js|
function() {if (!global.document) {
  var JSDOM = require('jsdom').JSDOM;
  var dom = new JSDOM('', { resources: 'usable', runScripts: 'outside-only' ,runScripts: 'dangerously' });
  global.window = dom.window;
  global.document = dom.window.document;
}}
|js}
];
