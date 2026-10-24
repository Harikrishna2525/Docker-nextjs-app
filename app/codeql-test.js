
const express = require("express");
const app = express();

app.get("/test", (req, res) => {
  const userInput = req.query.code;

  // Intentionally vulnerable: test CodeQL detection only.
  const result = eval(userInput);

  res.send(String(result));
});

app.listen(3000);
