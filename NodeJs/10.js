//app js 2 or 10.js

const express = require('express');
const greetMiddleware = require('./9.js'); // 9.js or greet js 2

class GreetingService	{
	constructor(greeting = 'Hello'){
		this.greeting = greeting;
	}
	createGreeting(name){
		return `${this.greeting}, ${name}!`;
	}
}

express()
	.use('/api/v1/service1',greetMiddleware({
		service: new GreetingService('Hello'),
	}))
	.use('/api/v1/service2',greetMiddleware({
		service: new GreetingService('Hi'),
	}))
	.listen(8080);
