FROM alpine:3.19
RUN apk add --no-cache curl python3
WORKDIR /app
RUN echo 'from http.server import HTTPServer, BaseHTTPRequestHandler' > server.py && \
    echo 'class H(BaseHTTPRequestHandler):' >> server.py && \
    echo '  def do_GET(self):' >> server.py && \
    echo '    self.send_response(200)' >> server.py && \
    echo '    self.end_headers()' >> server.py && \
    echo '    self.wfile.write(b"OK - GHCR Verified")' >> server.py && \
    echo 'HTTPServer(("", 8080), H).serve_forever()' >> server.py
EXPOSE 8080
CMD ["python3", "server.py"]
