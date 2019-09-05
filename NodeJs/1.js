const http = require('http'); // loads the http module

http.createServer((request,response) => {

	// 1) Tell your browser it's OK (code 200) and data is plain text
	response.writeHead(200, {
		'Content-Type': 'text/plain'
	});

	// 2) Write the announced text to the body of the page
	response.write('Hello World!\n');

	// 3)Tell the server that all of the response headers and body have been sent
	response.end();

}).listen(1337); //4 Tells the server what port to be on

// in console next you do: $node 1.js
// which will in turn be accessible at 
// http://localhost:1337 or http://127.0.0.1:1337
