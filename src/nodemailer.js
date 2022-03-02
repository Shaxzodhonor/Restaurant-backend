const nodemailer = require("nodemailer")
const express = require("express")
const app = express()
require("dotenv").config()
const fs = require("fs")
const path = require("path")

async function nodeMailer(){
  const transporter = nodemailer.createTransport({
    port: 100,
    service: "gmail",
    auth:{
      user: process.env.E_U,
      pass: process.env.E_P
    }
  })

  let info = await transporter.sendMail({
    from: "musicmaster868@gmail.com",
    to: "mastermusic2529@gmail.com",
    subject: "sinov xabari",
    text: "biz software dasturchi",
    attachments: [{
      filename: "music.mp3",
      content: fs.readFileSync(path.resolve(__dirname, "./a.mp3"))
    }]
  })

  console.log("message: ",info.messageId);
  // console.log("message: ", (await info).messageId);
}

app.get("", (req, res) => {
  nodeMailer()
  res.send("oq")
})


app.listen(9000, console.log(9000))