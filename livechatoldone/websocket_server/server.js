const express = require("express");
const http = require("http");
const socketIo = require("socket.io");
const cors = require("cors");

const app = express();
app.use(cors());

const server = http.createServer(app);
const io = socketIo(server, {
    cors: {
        origin: "*",
        methods: ["GET", "POST"]
    }
});

let users = {}; // Store user IDs with their socket IDs

// Default HTTP Route
app.get("/", (req, res) => {
    res.send("WebSocket Server is Running!");
});

// WebSocket Connection
io.on("connection", (socket) => {
    console.log("User connected:", socket.id);

    // Register a user with their unique ID
    socket.on("registerUser", (userId) => {
        users[userId] = socket.id;
        console.log(`User ${userId} registered with socket ID: ${socket.id}`);
        socket.emit("registrationSuccess", userId);
    });

    // Handle Private Messages
    socket.on("privateMessage", ({ sender, receiver, message }) => {
        console.log(`Message from ${sender} to ${receiver}: ${message}`);

        if (users[receiver]) {
            io.to(users[receiver]).emit("receiveMessage", { sender, receiver, message });
            console.log(`Message sent to ${receiver} (Socket: ${users[receiver]})`);
        } else {
            socket.emit("errorMessage", `User ${receiver} is offline.`);
            console.log(`User ${receiver} is offline.`);
        }
    });

    // Handle User Disconnect
    socket.on("disconnect", () => {
        for (let userId in users) {
            if (users[userId] === socket.id) {
                console.log(`User ${userId} disconnected`);
                delete users[userId];
                break;
            }
        }
    });
});

server.listen(3000, () => {
    console.log("WebSocket server running on port 3000");
});
