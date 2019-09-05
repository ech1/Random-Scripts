'use strict';

var tls = require('tls');
var fs  = require('fs');

const PORT = 1337;
const HOST = '127.0.0.1';

var options = {
	key:  fs.readFileSync('private-key.pem'),
	cert: fs.readFileSync('public-cert.pem')
};

var server = tls.createServer(options, function(socket) {

	//Friendly Message
	socket.write("I am the server sending you a message.");

	//print the data we recieved
	socket.on('data',function(data) {
		console.log('Recieved: %s [it is %d bytes long]',
			data.toString().replace(/(\n)/gm,""),
			data.length);
	});

	//let us know when transmission is over
	socket.on('end', function(){
		console.log('End_Of_Transmission');
	});
});

//start listening on a specific port and address
server.listen(PORT, HOST, function(){
	console.log("Listening at %s, on port %s", HOST, PORT);
});

//when error occurs, show it
server.on('error',function(error){
	console.error(error);
	//close connection after error occurs
	server.destroy();
});
