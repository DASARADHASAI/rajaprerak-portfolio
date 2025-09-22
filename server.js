const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

// Serve static files (HTML, CSS, JS)
app.use(express.static(path.join(__dirname)));

app.listen(PORT, () => {
  console.log(`Website running at http://localhost:${PORT}`);
});
