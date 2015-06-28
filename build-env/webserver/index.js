var express = require('express')
  , path = require('path')
  , livereload = require('livereload');

var publicDir = process.env.publicDir || '/mount/app/public/';

var app = express();

// configure application routes
/*app.get('/', function(req, res) {
  res.sendFile(path.join(publicDir, 'index.html'))
});*/
app.use(express.static(publicDir));

// start webserver
var server = app.listen(process.env.port || 8080, function() {
  var host = server.address().address;
  var port = server.address().port;
  console.log('[' + Date() + ']: App listening on http://%s:%s', host, port);
});

// start livereload server to watch for file changes in serving dir
var lrServer = livereload.createServer();
lrServer.watch(publicDir);