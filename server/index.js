const express = require("express");
const morgan = require("morgan");
const cors = require("cors");

const app = express();
const PORT = 3000;

app.use(cors());
app.use(morgan("dev"));
app.use(express.json());

let users = [
  {
    id: 1,
    name: "Frank",
    email: "frank@example.com",
  },
  {
    id: 2,
    name: "Sara",
    email: "sara@example.com",
  },
];

// GET /users
app.get("/users", (req, res) => {
  res.json(users);
});

// GET /users/:id
app.get("/users/:id", (req, res) => {
  const id = Number(req.params.id);

  const user = users.find((u) => u.id === id);

  if (!user) {
    return res.status(404).json({
      message: "User not found",
    });
  }

  res.json(user);
});

// POST /users
app.post("/users", (req, res) => {
  const { name, email } = req.body;

  const newUser = {
    id: users.length + 1,
    name,
    email,
  };

  users.push(newUser);

  res.status(201).json(newUser);
});

// PUT /users/:id
app.put("/users/:id", (req, res) => {
  const id = Number(req.params.id);

  const index = users.findIndex((u) => u.id === id);

  if (index === -1) {
    return res.status(404).json({
      message: "User not found",
    });
  }

  users[index] = {
    ...users[index],
    ...req.body,
  };

  res.json(users[index]);
});

// DELETE /users/:id
app.delete("/users/:id", (req, res) => {
  const id = Number(req.params.id);

  const index = users.findIndex((u) => u.id === id);

  if (index === -1) {
    return res.status(404).json({
      message: "User not found",
    });
  }

  const deletedUser = users[index];

  users.splice(index, 1);

  res.json({
    message: "User deleted",
    user: deletedUser,
  });
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});