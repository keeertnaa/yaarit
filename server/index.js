const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");

const PORT = process.env.PORT || 8000;
const app = express();

app.use(express.json());
app.use(authRouter);

const DB =
  "mongodb+srv://vid:9550249061@atlascluster.a8mlmy1.mongodb.net/";

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});