// greet js 2 or 9.js

const express = require('express');

module.exports = function(options = {}) { //router factory
	const router = express.Router();
	const {service} = options;
	router.get('/greet', (req,res,next) => {
		res.end(
			service.createGreeting(req.query.name || 'Stranger')
		);
	});
	return router;
};
