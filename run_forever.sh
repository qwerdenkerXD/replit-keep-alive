#!/usr/env bash

# Usage: run_forever.sh <RUN-COMMAND> ...

# run project in background
$* &

# start server in background for HTTP requests to keep alive
python -c "from http.server import BaseHTTPRequestHandler, HTTPServer

class MyServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write(b'Hello there')

    def do_OPTIONS(self):
      self.send_response(200, 'ok')
      self.send_header('Access-Control-Allow-Origin', '*')
      self.send_header('Access-Control-Allow-Methods', 'GET, OPTIONS')
      self.send_header('Access-Control-Allow-Headers', 'X-Requested-With')
      self.end_headers()

server_address = ('0.0.0.0', 8000)
httpd = HTTPServer(server_address, MyServer)
httpd.serve_forever()" &

while true
do
  curl -s https://$REPL_ID.id.repl.co > /dev/null
  sleep 180
done
