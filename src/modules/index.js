const express = require('express');
const router = express.Router();

const restaurant = require("./restaurant")

module.exports = router
  .get("/", restaurant.GET)
  .get("/:category", restaurant.RESTAURANT)
  .get("/:category/:restaurant", restaurant.MENU)
  .post("/", restaurant.POST)
