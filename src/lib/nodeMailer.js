const nodemailer = require("nodemailer")
const { E_P, E_U } = require("../config")

async function nodeMailer(received,messege,meal,price,img){
  const transporter = nodemailer.createTransport({
    port: 100,
    service: "gmail",
    auth:{
      user: E_U,
      pass: E_P
    }
  })

  let info = await transporter.sendMail({
    from: "T_EXPRESS yetkazib berish xizmati",
    to: received,
    subject: "T_EXPRESS yetkazib berish xizmati",
    text: messege,
    html: `
    <div><img src="${img}"></img></div>
    <h1>${meal}</h1>
    <h2>${price} so'm</h2>
    <p>T_EXPRESS sizga yoqimli ishtaha tilab qoladi!!!😋😋😋</p>
    `,
 
  })

  console.log("message: ",info.messageId);
  // console.log("message: ", (await info).messageId);
}


module.exports = nodeMailer;