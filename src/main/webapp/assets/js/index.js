

let coffee_items_card;
let coffee_description_card;
let coffee_image_card;
let image;
let coffee_content_card;
let coffee_title_card;
let coffee_message_card;
let coffee_cost_details_card;
let cost;
let add_items;
let a_card;
let button_card;



const object1 = JSON.parse(localStorage.getItem("product_detail_list"));
for (i = 0; i < object1.length ; i++) {
  coffee_items_card = document.createElement("div");
  coffee_items_card.setAttribute("class", "coffee-items");
  console.log(coffee_items_card);

  coffee_description_card = document.createElement("div");
  coffee_description_card.setAttribute("class", "coffee-description");
  coffee_items_card.append(coffee_description_card);

  coffee_image_card = document.createElement("div");
  coffee_image_card.setAttribute("class", "coffee-image");
  coffee_description_card.append(coffee_image_card);

  image = document.createElement("img");
  image.setAttribute("src", object1[i].image.src);
  image.setAttribute("width", "80px");
  image.setAttribute("height", "80px");
  coffee_image_card.append(image);

  coffee_content_card = document.createElement("div");
  coffee_content_card.setAttribute("class", "coffee-content");
  coffee_description_card.append(coffee_content_card);

  coffee_title_card = document.createElement("div");
  coffee_title_card.setAttribute("class", "coffee-title");
  coffee_title_card.innerText = object1[i].name;
  coffee_content_card.append(coffee_title_card);

  coffee_message_card = document.createElement("div");
  coffee_message_card.setAttribute("class", "coffee-message");
  coffee_message_card.innerText = `${object1[i].quantities.medium.name}( ${object1[i].quantities.medium.quantity} )${object1[i].quantities.medium.unit}(  ${object1[i].quantities.medium.calories}) ${object1[i].quantities.medium.calories_unit}`;
  coffee_content_card.append(coffee_message_card);

  coffee_cost_details_card = document.createElement("div");
  coffee_cost_details_card.setAttribute("class", "coffee-cost-details");
  coffee_items_card.append(coffee_cost_details_card);

  cost = document.createElement("div");
  cost.setAttribute("class", "cost");
  cost.innerText = `Rs.${object1[i].price_1.medium}`;
  coffee_cost_details_card.append(cost);

  add_items = document.createElement("div");
  add_items.setAttribute("class", "add-item");
  add_items.setAttribute("data-id", object1[i].product_id);
  console.log(object1[i].product_id);

  coffee_cost_details_card.append(add_items);

  a_card = document.createElement("a");
  // a_card.setAttribute("href","../../pages/productdetail/product-cappu.html?product_id="+object1[i]["product_id"]);
  add_items.append(a_card);

  button_card = document.createElement("button");
  button_card.innerText = "add item";
  a_card.append(button_card);

  document.querySelector(".coffee-products").append(coffee_items_card);
}
// let root = window.location.origin
const btn_add_item = document.querySelectorAll(".add-item");
const user_login_id1 = JSON.parse(localStorage.getItem("unique_id"));

btn_add_item.forEach((findId) => {
  findId.addEventListener("click", (e) => {
    if (user_login_id1 == null) {
      alert("login");
    } else {
      const unique_id = findId.dataset.id;

      console.log(unique_id);

      window.location.href = `../../pages/productdetail/product-cappu.html?product_id=${unique_id}`;
    }
  });
});
