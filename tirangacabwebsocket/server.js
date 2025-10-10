const http = require("http");
const socketio = require("socket.io");
const WebSocket = require("ws");

// Socket.IO Server (Drivers के लिए)
const server = http.createServer();
const io = socketio(server, {
  cors: { origin: "*", methods: ["GET", "POST"] }
});

const connectedDrivers = {};

io.on("connection", (socket) => {
  console.log("✅ Driver connected:", socket.id);

  socket.on("register_driver", (device_id) => {
    connectedDrivers[device_id] = socket.id;
    console.log("✅ Driver registered:", device_id, "=>", socket.id);
  });

  socket.on("disconnect", () => {
    for (let id in connectedDrivers) {
      if (connectedDrivers[id] === socket.id) {
        delete connectedDrivers[id];
      }
    }
    console.log("⚠️ Driver disconnected:", socket.id);
  });
});

// ✅ Raw WebSocket (PHP के लिए)
const wss = new WebSocket.Server({ port: 4000 });

wss.on("connection", function (ws) {
  console.log("✅ PHP Connected via Raw WebSocket");

  ws.on("message", function (msg) {
    console.log("📩 PHP sent:", msg);

    try {
      const parsed = JSON.parse(msg);

      if (parsed.event === "new_booking") {
        parsed.device_ids.forEach(device_id => {
          if (connectedDrivers[device_id]) {
            io.to(connectedDrivers[device_id]).emit("new_booking", parsed.data);
            console.log("✅ Booking sent to:", device_id);
          } else {
            console.log("❌ Driver offline:", device_id);
          }
        });
      }
    } catch (err) {
      console.log("❌ JSON parse error:", err.message);
    }
  });
});

server.listen(3000, () => {
  console.log("✅ WebSocket Server running on port 3000");
});

console.log("✅ PHP WebSocket Server running on port 4000");
