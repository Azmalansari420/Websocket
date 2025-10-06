const fs = require("fs");
const https = require("https");
const WebSocket = require("ws");

// 🔥 Cert, Key alag hone chahiye (cPanel me hote hain):
const server = https.createServer({
   cert: fs.readFileSync("/var/cpanel/ssl/apache_tls/tirangacab.com/combined"),
  key: fs.readFileSync("/var/cpanel/ssl/apache_tls/tirangacab.com/combined"),
});

const wss = new WebSocket.Server({ server });

wss.on("connection", (ws) => {
  console.log("✅ Client connected via WSS");

  ws.on("message", (message) => {
    console.log("📩 Received:", message);

    // Broadcast to all clients
    wss.clients.forEach((client) => {
      if (client.readyState === WebSocket.OPEN) {
        client.send(message);
      }
    });
  });

  ws.on("close", () => console.log("❌ Client disconnected"));
});

server.listen(8080, () => {
  console.log("🚀 WSS server running on wss://tirangacab.com:8080");
});
