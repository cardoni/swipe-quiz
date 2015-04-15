http = require "http"

test = ( request, response ) ->
  response.writeHead(200)
  response.write( 'Hello World.' )
  response.end()

http.createServer( test ).listen(80, () ->
  console.log '\nTest is online.'
)