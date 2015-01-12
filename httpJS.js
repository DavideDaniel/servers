var http = require ("http");
var server = http.createServer(function(request, response){
	var path = request.url;
	if (path === "/") {
		response.end("Welcome");

	}
	else {
		response.end();
	}
});

server.listen(2000);