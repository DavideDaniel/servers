
/*
ECHO SERVER HTTP PATH SPLIT
Write an http server. When you go to http://localhost:2000/say/something, 
it will return everything after /say. In this example, it will respond with "something" 
If you don't have /say, respond with "Please go to http://localhost:2000/say/something"
*/

var http = require ("http");
var server = http.createServer(function(request, response){
	var path = request.url;
	var split = path.split("/")
	if (split[1] === "say") {
		response.end(split[2]);

	}
	else {
		response.end("Please go to http://localhost:2000/say/something");
	}
});

server.listen(2000);