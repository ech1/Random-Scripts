const express = require('express');
const app = express();

const PORT = 3000;

app.set('view engine','jade');  // Sets jade as the view engine / template engine
app.set('views', 'src/views');	// Sets the dir where all the .jade files are

//create a root route
app.get('/',function(req, res){
	res.render('index');
});

app.listen(PORT, function(err) {
	if(!err){
		console.log('Server is running at port', PORT);
	} else {
		console.log(JSON.stringify(err));
	}
});
