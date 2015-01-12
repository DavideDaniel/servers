// Write an http server that responds with "Hello World" to the user when you go to http://localhost:2000, and responds with "phooey" on anything else.

var http = require ("http");
var server = http.createServer(function(request, response){
	var path = request.url;
	if (path === "/") {
		response.end("Hello World");

	}
	else {
		response.end("Phooey");
	}
});

server.listen(2000);
