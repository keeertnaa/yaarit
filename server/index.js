const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");
const cors = require('cors');

// const app = express();

const PORT = process.env.PORT || 8000;
// process.env.PORT || 8000
const app = express();

app.use(express.json());
app.use(authRouter);
app.use(cors());
// app.use((req, res, next) => {
//     res.header('Access-Control-Allow-Origin', '*');
//     res.header('Access-Control-Allow-Headers', 'Content-Type');
//     res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
//     next();
// });


const DB =
  "mongodb+srv://vidhyadhar:9550249061@cluster0.jmvbnqe.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

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