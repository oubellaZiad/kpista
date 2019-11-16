const http = require('http');
//const app = require('lib');
const conf = require('./conf/conf');
console.log('conf', conf);
http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World 2\n');
}).listen(5000, "0.0.0.0");
console.log('Server running at: http://127.0.0.1:5000/');
