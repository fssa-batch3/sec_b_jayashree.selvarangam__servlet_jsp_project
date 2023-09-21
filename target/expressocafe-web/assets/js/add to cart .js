
const object = JSON.parse(localStorage.getItem("product_detail_list"));
for (let i = 0; i < object.length; i++) {
  coffee_items_card = document.createElement("div");
  coffee_items_card.setAttribute("class", "coffee-items");
  // console.log(coffee_items_card);

  coffee_description_card = document.createElement("div");
  coffee_description_card.setAttribute("class", "coffee-description");
  coffee_items_card.append(coffee_description_card);

  coffee_image_card = document.createElement("div");
  coffee_image_card.setAttribute("class", "coffee-image");
  coffee_description_card.append(coffee_image_card);

  image = document.createElement("img");
  image.setAttribute("src", object[i].image.src);
  image.setAttribute("width", "80px");
  image.setAttribute("height", "80px");
  coffee_image_card.append(image);

  coffee_content_card = document.createElement("div");
  coffee_content_card.setAttribute("class", "coffee-content");
  coffee_description_card.append(coffee_content_card);

  coffee_title_card = document.createElement("div");
  coffee_title_card.setAttribute("class", "coffee-title");
  coffee_title_card.innerText = object[i].name;
  coffee_content_card.append(coffee_title_card);

  coffee_message_card = document.createElement("div");
  coffee_message_card.setAttribute("class", "coffee-message");
  coffee_message_card.innerText = `${object[i].quantities.medium.name}(  ${object[i].quantities.medium.quantity}) ${object[i].quantities.medium.unit}(  ${object[i].quantities.medium.calories}) ${object[i].quantities.medium.calories_unit}`;
  coffee_content_card.append(coffee_message_card);

  coffee_cost_details_card = document.createElement("div");
  coffee_cost_details_card.setAttribute("class", "coffee-cost-details");
  coffee_items_card.append(coffee_cost_details_card);

  cost = document.createElement("div");
  cost.setAttribute("class", "cost");
  cost.innerText = object[i].currency + object[i].price_1.medium;
  coffee_cost_details_card.append(cost);

  add_items = document.createElement("div");
  add_items.setAttribute("class", "add-item");
  add_items.setAttribute("data-id", object[i].product_id);
  coffee_cost_details_card.append(add_items);

  a_card = document.createElement("a");
  // a_card.setAttribute("href",);
  add_items.append(a_card);

  button_card = document.createElement("button");
  button_card.innerText = "add item";
  a_card.append(button_card);

  document.querySelector(".coffee-products").append(coffee_items_card);
}
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


let your_cart_card;
let beverage_card;
let beverage_container_card;
let beverage_image_card;
let image_1;
let beverage_content_card;
let image_2;
let beverage_title_card;
let beverage_message_card;
let inc_dec_button;
let button;
let minus;
let i_minus;
let num;
let plus;
let i_plus;
let beverage_costdetail_card;
let cost_1;
let go_back;
let a1_card;

const cart_items = JSON.parse(localStorage.getItem("crud"));
// console.log(cart_items);

// // console.log(product_carts);
// let productData = product_carts.filter( product=>
//     cart_items.some(cart_items=>cart_items.unique === product.product_id && cart_items.price === product.price)
//     );
// console.log(productData);

const unique_id = JSON.parse(localStorage.getItem("unique_id"));
console.log(unique_id);
const productData1 = JSON.parse(localStorage.getItem("add_products_cart"));
// function find_user_products(e){
//     e.user_id == unique_id
// };
console.log(productData1);
const productData = productData1.filter((type) => type.user_id === unique_id);

console.log(productData);

for (i = 0; i < productData.length; i++) {
  //    let cart_items = JSON.parse(localStorage.getItem('crud'));
  //    let find = cart_items.find(e => e.unique == productData[i]["product_id"] && e.price === productData[i]["price"] );
  //     console.log(find);

  your_cart_card = document.createElement("section");
  your_cart_card.setAttribute("class", "Yourcart");
  // console.log(your_cart_card);

  beverage_card = document.createElement("div");
  beverage_card.setAttribute("class", "beverage");
  your_cart_card.append(beverage_card);

  beverage_container_card = document.createElement("div");
  beverage_container_card.setAttribute("class", "beverage-container");
  beverage_card.append(beverage_container_card);

  beverage_image_card = document.createElement("div");
  beverage_image_card.setAttribute("class", "beverage-image");
  beverage_container_card.append(beverage_image_card);

  image_1 = document.createElement("img");
  image_1.setAttribute("src", productData[i].image.src);
  beverage_image_card.append(image_1);

  beverage_content_card = document.createElement("div");
  beverage_content_card.setAttribute("class", "beverage-content");
  beverage_container_card.append(beverage_content_card);

  image_2 = document.createElement("img");
  image_2.setAttribute("src", "../../assets/image/veg.svg");
  beverage_content_card.append(image_2);

  beverage_title_card = document.createElement("div");
  beverage_title_card.setAttribute("class", "beverage-title");
  beverage_title_card.innerText = productData[i].name;
  beverage_content_card.append(beverage_title_card);

  beverage_message_card = document.createElement("div");
  beverage_message_card.setAttribute("class", "beverage-message");
  beverage_message_card.innerText = productData[i].quantities;
  beverage_content_card.append(beverage_message_card);

  near_to_remove = document.createElement("div");
  near_to_remove.setAttribute("class", "near_to_remove");
  beverage_container_card.append(near_to_remove);

  inc_dec_button = document.createElement("div");
  inc_dec_button.setAttribute("class", "inc-dec-button");
  near_to_remove.append(inc_dec_button);

  button = document.createElement("button");
  button.setAttribute("class", "button");
  inc_dec_button.append(button);

  // minus=document.createElement("span");
  // minus.setAttribute("class","minus");
  // button.append(minus);

  i_minus = document.createElement("img");
  i_minus.setAttribute("class", "minus_1");
  i_minus.setAttribute("src", "../../assets/image/download_minus.png");
  button.append(i_minus);

  num = document.createElement("span");
  num.setAttribute("class", "num");
  num.textContent = productData[i].quantity_ordered;
  button.append(num);

  // plus=document.createElement("span");
  // plus.setAttribute("class","plus");
  // button.append(plus);

  i_plus = document.createElement("img");
  i_plus.setAttribute("class", "plus_1");
  i_plus.setAttribute("src", "../../assets/image/download.png");
  button.append(i_plus);

  beverage_costdetail_card = document.createElement("div");
  beverage_costdetail_card.setAttribute("class", "beverage-costdetail");
  near_to_remove.append(beverage_costdetail_card);

  cost = document.createElement("div");
  cost.setAttribute("class", "cost");
  cost.innerText = productData[i].price;

  const sum =
    cost.innerText.replace("Rs.", "") * productData[i].quantity_ordered;
  console.log(sum);
  cost.innerText = `Rs.${sum}`;
  // .replace('Rs','');
  beverage_costdetail_card.append(cost);

  go_back = document.createElement("div");
  go_back.setAttribute("class", "Goback");
  beverage_costdetail_card.append(go_back);

  a1_card = document.createElement("button");
  a1_card.setAttribute("class", "Go_back");
  a1_card.setAttribute("data-product_cart_id", productData[i].add_to_cart_id);
  a1_card.setAttribute("data-cart_id", productData[i].product_id);

  // a1_card.setAttribute("href","../../pages/fill forms/review.html");  //object[i]["link_pages"];
  a1_card.innerText = "remove";
  go_back.append(a1_card);

  document.querySelector(".whole").append(your_cart_card);
}

// Let [month, date, year] = new Date().

// toLocaleDateString("en-IN").split("/");

// const cartId = this.dataset.cart_id;

// // console.log(cartId);

const removeFood = document.querySelectorAll("button.Go_back");
removeFood.forEach((remove_id) => {
  remove_id.addEventListener("click", function () {
    const cartId = this.dataset.cart_id;
    const { product_cart_id } = this.dataset;
    // console.log('cartId');
    // let cart_ids = JSON.parse(localStorage.getItem("crud"));
    const product_cart__id = JSON.parse(
      localStorage.getItem("add_products_cart")
    );

    function find_id(e) {
      return e.add_to_cart_id === product_cart_id;
    }
    const remove_food = product_cart__id.find(find_id);
    const indexOfItem = product_cart__id.indexOf(remove_food);
    product_cart__id.splice(indexOfItem, 1);

    localStorage.setItem("add_products_cart", JSON.stringify(product_cart__id));
    window.location.reload();
  });
});

// plus quantity function//

const plus_1 = document.querySelectorAll(".plus_1");
plus_1.forEach((find_quantity) => {
  find_quantity.addEventListener("click", function () {
    const parent = this.parentNode;
    // // console.log(parent);
    const num = parent.querySelector(".num");
    // console.log(num);
    let n = parseInt(num.textContent);
    if (n < 30) {
      n += 1;
    }
    num.textContent = n;
    // // getting the ID
    const parentBox = this.closest(".near_to_remove");
    // console.log(parentBox);
    const idButton = parentBox
      .querySelector(".beverage-costdetail")
      .querySelector(".Goback")
      .querySelector(".Go_back")
      .getAttribute("data-product_cart_id");
    // console.log(idButton);
    const cart_product = JSON.parse(localStorage.getItem("add_products_cart"));
    console.log(cart_product);
    function find_cart(e) {
      return e.add_to_cart_id == idButton;
    }
    const cart_quantity = cart_product.find(find_cart);
    console.log(cart_quantity);
    if (cart_quantity) {
      cart_quantity.quantity_ordered = n.toString();
      localStorage.setItem("add_products_cart", JSON.stringify(cart_product));
      window.location.reload();
    }
  });
});

const minus_1 = document.querySelectorAll(".minus_1");
minus_1.forEach((find_quantity) => {
  find_quantity.addEventListener("click", function () {
    const parent = this.parentNode;
    const num = parent.querySelector(".num");
    let n = parseInt(num.textContent);
    if (n > 1) {
      n -= 1;
    }
    num.textContent = n;
    /// / getting the ID
    const parentBox = this.closest(".near_to_remove");
    const idButton = parentBox
      .querySelector(".beverage-costdetail")
      .querySelector(".Goback")
      .querySelector(".Go_back")
      .getAttribute("data-product_cart_id");
    // let  productData= JSON.parse(localStorage.getItem('add_products_cart'));
    const cart_product = JSON.parse(localStorage.getItem("add_products_cart"));
    function find_cart(e) {
      return e.add_to_cart_id == idButton;
    }
    const cart_quantity = cart_product.find(find_cart);
    console.log(cart_quantity);
    if (cart_quantity) {
      cart_quantity.quantity_ordered = n.toString();
      localStorage.setItem("add_products_cart", JSON.stringify(cart_product));
      window.location.reload();
    }
  });
});


let selectedValue;
function radio() {
  // let  productData= JSON.parse(localStorage.getItem('add_products_cart'));
  const delivery = document.querySelectorAll('input[name="delivery_type"]');
  for (let i = 0; i < delivery.length; i++) {
    const element = delivery[i];
    if (element.checked === true) {
      selectedValue = element.value;
      // let type_of_address = localStorage.setItem('type_of_address',JSON.stringify(selectedValue))
      break;
    }
  }
  return selectedValue;
 
  // location.reload;
}


let unique_users = JSON.parse(localStorage.getItem('unique_id'));
console.log(unique_users);

let stored_address1 = JSON.parse(localStorage.getItem('address'));

function find_user_address(e){
 return   e.user_id === unique_users
}

let address = stored_address1.filter(find_user_address)
if(address!==null){
let boolean;
for(let i=0;i<address.length;i++){
  if(address[i].value === false){
    boolean = false;
  }else{
    boolean=true;
    break;
  }}
if(boolean===false){
  address[0]['value']=true;
  localStorage.setItem('address',JSON.stringify(address));
}}
let address_Input;
let address_array = JSON.parse(localStorage.getItem('address'));
let address_object ='';
if(address_array!==null){
 for(let i=0;i<address.length;i++){
  if(address[i].value === true){
    address_Input = address_array[i]['address1']+" ."
    address_object = address[i]
  }
  console.log(address_Input)
}
}
else{
  address_Input = ' ';
}
    
    console.log(address_object.duration)

// important should look after it//
// // adding the address in the cart page
const user_data = JSON.parse(localStorage.getItem("unique_id"));
const user_list = JSON.parse(localStorage.getItem("user_list"));
function findPlayer(e) {
  return e.user_email == user_data;
}
person_data = user_list.find(findPlayer);
///////

const delivery_name = document.getElementById("del-name");
const delivery_address = document.getElementById("del-address");
delivery_name.innerText = person_data.user_name;
delivery_address.innerText =address_Input;

const change_address = document.querySelector(".change-address");
change_address.addEventListener("click", () => {
  window.location.href = "../../pages/fill forms/change-address.html";
});

const add_cart_id_values = [];
for (i = 0; i < productData.length; i++) {
  add_cart_id_values[i] = productData[i].add_to_cart_id;
  //  permittedValues.push(permittedValues[i] );
}
console.log(add_cart_id_values);
localStorage.setItem("add_cart_id_values", JSON.stringify(add_cart_id_values));
const total_price = productData;
let price_1 = 0;
for (let i = 0; i < total_price.length; i++) {
  price_1 += parseInt(
    total_price[i].price.replace("Rs.","") * total_price[i].quantity_ordered
  );
}

const item_total = document.getElementById("amount");
item_total.innerText = `Rs.${price_1}`;
const item_total1 = price_1;
const total_items = document.getElementById("total_items");
total_items.innerText = `Rs.${price_1}`;

function generateShortId() {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  let shortId = '';
  for (let i = 0; i < 10; i++) {
    const randomIndex = Math.floor(Math.random() * characters.length);
    shortId += characters.charAt(randomIndex);
  }
  return shortId;
}

const order = document.getElementById("btn_order");
order.addEventListener("click", () => {
  // myfunction();
  //   let order = JSON.parse(localStorage.getItem('orders'))||[];
  //   let exist=order.length && JSON.parse(localStorage.getItem('orders')).some()
  let allow = " ";
  if ((allow = " ")) {
    const add_products_cart1 = JSON.parse(
      localStorage.getItem("add_products_cart")
    );
    if (
      add_products_cart1 == "" ||
      JSON.parse(localStorage.getItem("add_products_cart")) === null
    ) {
      alert("no products");
      console.log(2);
    }
     else if (radio()== null) {
      alert("enter the mode of delivery");
    }
     else if(delivery_address.innerText===null||delivery_address.innerText===""){
      alert("add the delivery address");
    }
    //  if(){
    //   alert('choose a address')
    // }
     else {
      // alert('are you sure you want to place the order');
      const check = "";
      if (check == "") {
        const order = JSON.parse(localStorage.getItem("orders"));

        if (order == null) {
          const order = [];
          const add_products_cart = JSON.parse(
            localStorage.getItem("add_products_cart")
          );
          const mode_of_delivery = radio();
          console.log(mode_of_delivery);
          // const arr = JSON.parse(localStorage.getItem('add_products_cart'));
          const uuid = uuidv4();
          for (let i = 0; i < add_products_cart.length; i++) {
            add_products_cart[i].ordered_object_at_a_time = uuid;
            add_products_cart[i].order_id_for_customer = generateShortId();
            localStorage.setItem(
              "add_products_cart",
              JSON.stringify(add_products_cart)
            );
          }
          const array = add_products_cart.map((object) =>
            Object.assign(object, {
              total_price: item_total1,
              date: moment().format("YYYY-MM-DD"),
              order_id: uuidv4(),
              mode_of_delivery: radio(),
              delivery_address: delivery_address.innerText,
              date: moment().format("YYYY-MM-DD"),
              time_check: moment().format("YYYY-MM-DD  hh:mm:ssA").toString(),
              before_30_minutes: moment()
                .add({ minutes: address_object.duration })
                .format("YYYY-MM-DD hh:mm:ssA"),
                before_5_minutes: moment()
                .add({ minutes: 1 })
                .format("YYYY-MM-DD hh:mm:ssA"),
              review:false,
              // time_check :moment().format('YYYY-MM-DD  hh:mm:ssA').toString(),
              // before_30_minutes : moment().add({minutes:2}).format('YYYY-MM-DD hh:mm:ssA'),
              delivery: "not delivered"
            })
          );
          const user_id1 = JSON.parse(localStorage.getItem("unique_id"));
          const add_products_cart1 = add_products_cart.filter(
            (type) => type.user_id == user_id1
          );
          console.log(add_products_cart1);
          function pushArray(array, array2) {
            array.push.apply(array, array2);
            console.log(array);
          }
          pushArray(order, add_products_cart1);
          const unique_id = JSON.parse(localStorage.getItem("unique_id"));
          for (let i = add_products_cart.length - 1; i >= 0; i--) {
            if (unique_id === add_products_cart[i].user_id) {
              add_products_cart.splice(i, 1);
              localStorage.setItem(
                "add_products_cart",
                JSON.stringify(add_products_cart)
              );
            }
          }
          //   order.forEach(object => {
          //   object.date = new Date(),
          //   object.dat = 'Res';
          //   });
          localStorage.setItem("orders", JSON.stringify(order));
          localStorage.setItem(
            "add_products_cart",
            JSON.stringify(add_products_cart)
          );
          location.reload();
          //   arr.splice(0, arr.length)
        } else {
          // console.log(mode_of_delivery);

          const order = JSON.parse(localStorage.getItem("orders"));
          const add_products_cart = JSON.parse(
            localStorage.getItem("add_products_cart")
          );
          const uuid = uuidv4();
          for (let i = 0; i < add_products_cart.length; i++) {
            add_products_cart[i].ordered_object_at_a_time = uuid;
            add_products_cart[i].order_id_for_customer = generateShortId();
            localStorage.setItem(
              "add_products_cart",
              JSON.stringify(add_products_cart)
            );
          }

          const array = add_products_cart.map((object) =>
            Object.assign(object, {
              total_price: item_total1,
              date: moment().format("YYYY-MM-DD"),
              order_id: uuidv4(),
              mode_of_delivery: radio(),
              delivery_address: delivery_address.innerText,
              time_check: moment().format("YYYY-MM-DD  hh:mm:ssA").toString(),
              before_30_minutes: moment()
                .add({ minutes: address_object.duration })
                .format("YYYY-MM-DD hh:mm:ssA"),
                before_5_minutes: moment()
                .add({ minutes: 1 })
                .format("YYYY-MM-DD hh:mm:ssA"),
                review:false,
              delivery: "not delivered"
            })
          );
          const user_id1 = JSON.parse(localStorage.getItem("unique_id"));

          const add_products_cart1 = add_products_cart.filter(
            (type) => type.user_id == user_id1
          );
          console.log(add_products_cart1);
          function pushArray(array, array2) {
            array.push.apply(array, array2);
            console.log(array);
          }
          pushArray(order, add_products_cart1);

          const unique_id = JSON.parse(localStorage.getItem("unique_id"));
          for (let i = add_products_cart.length - 1; i >= 0; i--) {
            if (unique_id === add_products_cart[i].user_id) {
              add_products_cart.splice(i, 1);
              localStorage.setItem(
                "add_products_cart",
                JSON.stringify(add_products_cart)
              );
            }
          }
          // for each method for adding date
          //   order.forEach(object => {
          //     object.date =  new Date(),
          //     object['dat']['delivery'] = 'Res',
          //     object['dat']['deliver'] = 'ser';
          //     });
          localStorage.setItem("orders", JSON.stringify(order));
          localStorage.setItem(
            "add_products_cart",
            JSON.stringify(add_products_cart)
          );
          window.location.reload();
        }
        //  let  add_products_cart = JSON.parse(localStorage.getItem('add_products_cart'));
        //  add_products_cart.splice(0, add_products_cart.length)
      }
      // alert('order placed successfully')
      window.location.href = "../../pages/My orders/myorders.html";
    }
  }
});


