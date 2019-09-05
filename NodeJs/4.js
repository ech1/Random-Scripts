'use strict';

var tls = require('tls');
var fs  = require('fs');

const PORT = 1337;
const HOST = '127.0.0.1';

var options = {
	key  : fs.readFileSync('private-key.pem');
	cert : fs.readFileSync('public-cert.pem');
	rejectUnauthorized: false
};

var client = tls.connect(PORT, HOST, options, function() {
	//check if authorization worked
	if (client.authorized){
		console.log("Connection authorized by cert authority");
	} else {
		console.log("Connection not authorized:" + client.authorizationError)
	}
	//send friendly message
	client.write("I'm the client sending you a message.");
});

client.on("data",function(data) {
	console.log('Recieved: %s [it is %d bytes long]',
		data.toString().replace(/(\n)/gm,""),
		data.length);
	//close the connection after recieveing the message
	client.end();
});

client.on('close',function() {
	console.log("Connection closed");
});

//if there is an error, show it
client.on('error', function(error) {
	console.error(error);

	//close the connection after error
	client.destroy();
}
