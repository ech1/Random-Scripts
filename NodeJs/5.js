var https = require('https');
var http  = require('http');
var fs    = require('fs');

var httpsOptions = {
	key	: fs.readFileSync('/home/ech0/Desktop/Coding/NodeJs/conf/key.pem'),
	cert	: fs.readFileSync('/home/ech0/Desktop/Coding/NodeJs/conf/cert.pem')
};

var app = function (req, res){
	res.writeHead(200);
	res.end("Hello World \n");
}

http.createServer(app).listen(8888);
https.createServer(httpsOptions,app).listen(4433); // this is cancer to get it to work
