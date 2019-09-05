var express = require('express');
var cors = require('cors');

var app = express();
app.use(cors());

var port = process.env.PORT || 8080;

app.get('/', function(req, res) {
	var info = {
		'string_value' : 'StackOverflow',
		'number_value' : 8476
	}
	res.json(info);
})

app.listen(port,function(){
	console.log('Node.js listens on port ' + port)
})

app.use(function(req,res,next){
	var err = new Error('Not Found');
	err.status = 404;
	next(err);
});
app.use(function(err,req,res,next){
	res.status(err.status || 500);
	res.render('error', {
		message: err.message,
		error:	 err
	});
});
