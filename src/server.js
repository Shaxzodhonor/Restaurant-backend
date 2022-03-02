const express = require("express");
const app = express();
const PORT =   process.env.PORT || 5000
const router = require("./modules/index");
const cors = require("cors");

app.use(express.json());
app.use(cors());
app.use('/T_Express/v1/',router);

app.listen(PORT, ()=>{
  console.log(PORT);
})