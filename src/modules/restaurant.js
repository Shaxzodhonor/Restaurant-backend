const model = require("./model");
const  nodeMalier  = require("../lib/nodeMailer")

module.exports = {
  GET: async(_, res) => {
    try {
      const categoryAll = await model.getCategory();
      res.json(categoryAll);
    } catch(err) {
      
      res.status(500).send({
        status: 500,
        messege: err.message
      })
    }
  },
  RESTAURANT: async(req, res) => {
    try {
      const { category } = req.params;
      if(category){
        const restaurant = await model.getRestaurants(category);
        return  res.json(restaurant)
      } else {
        throw new Error ("NOT FOUND")
      }
    } catch(err) {
      console.log(err);
      res.status(500).send({
        status: 500,
        message: err.message
      })
    }
  },
  MENU: async(req, res) => {
    
    try {
      const { restaurant } = req.params;
      
      const kitchen = await model.getMenu(restaurant);
      if(kitchen.length){

        res.json(kitchen);
      } else {
        throw new Error ("NOT FOUND")
      }
      
    } catch(err) {
      res.status(500).send({
        status: 500,
        message: err.message
      })
    }
  },
  POST: (req, res) => {
    try {
      console.log("sdfd",req.body);
      const {name, email, meal, price, images} = req.body
      if(name && email && meal && price, images){
        nodeMalier(email, "sendan", meal, price, images)
      }
      
      res.send("ok")
    } catch(err) {
      console.log(err);
      res.status(500).send({
        status: 500,
        messege: err.messege
      })
    }
  }
}