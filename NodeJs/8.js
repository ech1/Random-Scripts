//app js , named as 8.js here
const express = require('express');
const greetMiddleware = require('./7.js');	//7.js or greet js

express()
	.use('/api/v1/',greetMiddleware({greeting: 'Hello world' }))
	.listen(8080);
