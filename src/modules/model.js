const PG  = require("../lib/fetch");

const CATEGORY = `
SELECT *
FROM category
`;

function getCategory() {
  return PG.fetchAll(CATEGORY);
}


const RESTAURANT = `
SELECT * 
FROM restaurant
WHERE category_id = $1
`;

function getRestaurants(category) {
  return PG.fetchAll(RESTAURANT, category);
}


const MENU = `
SELECT * 
FROM menu
WHERE restaurant_id = $1
`;

function getMenu(restaurant) {
  return PG.fetchAll(MENU, restaurant)
}


module.exports = {
  getCategory,
  getRestaurants,
  getMenu
}