
let row_card;
let image_card;
let image_main_card;
let content_card;
let h3_card;
let p_card;
let p1_card;
let p2_card;
let button_card;
let size_card;
let btn1_card;
let btn2_card;
let btn3_card;
let inc_dec_button_card;
let inc_dec_card;
let minus_card;
let plus_card;
let add_item_card;

const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
// //(urlParams);
const product = urlParams.get("product_id");
console.log(product)
const master_list = JSON.parse(localStorage.getItem("product_detail_list"));
const reviews = JSON.parse(localStorage.getItem("stars"));
console.log(reviews)
let avg_int;
let avg;

if(reviews!==null){
let review_array = reviews.filter((e)=>e.product_id === product);
console.log(review_array)
let sum =0;
 for(let i=0;i<review_array.length;i++){
   sum+=review_array[i].no_of_stars;
 };
 avg = sum/review_array.length;
 avg_int =parseFloat(avg.toFixed(1));
console.log(avg)
}
else{
  avg_int = 0;
}

function findProduct(e) {
  return e.product_id === product;
}

let productData = master_list.find(findProduct);
console.log(productData)


 

const add_to_cart = JSON.parse(localStorage.getItem("add_products_cart"));
//(add_to_cart);

row_card = document.createElement("div");
row_card.setAttribute("class", "row");
// //(row_card);

image_card = document.createElement("div");
image_card.setAttribute("class", "image");
row_card.append(image_card);

image_main_card = document.createElement("img");
image_main_card.setAttribute("src", productData.image.src);
image_card.append(image_main_card);

content_card = document.createElement("div");
content_card.setAttribute("class", "content");
row_card.append(content_card);

h3_card = document.createElement("h3");
h3_card.setAttribute("class", "heading");
h3_card.innerText = productData.name;
content_card.append(h3_card);

p_card = document.createElement("p");
p_card.setAttribute("class", "calorie");
p_card.innerText =
  `${productData.quantities.medium.name} ` +
  `(${productData.quantities.medium.quantity} ) ` +
  ` ${productData.quantities.medium.unit}  ` +
  `(${productData.quantities.medium.calories})` +
  ` ${productData.quantities.medium.calories_unit}`;

content_card.append(p_card);
if(isNaN(avg_int)){
  p3_card = document.createElement("p");
  p3_card.setAttribute("class", "calorie");
  p3_card.setAttribute("style", "display:none");
  content_card.append(p3_card);
  }else{
p3_card = document.createElement("p");
p3_card.setAttribute("class", "calorie");
p3_card.setAttribute("style", "color:brown");
p3_card.innerText =`${avg_int} ratings`;

content_card.append(p3_card);
  }

p1_card = document.createElement("p");
p1_card.setAttribute("class", "detail");
p1_card.innerText = productData.description;
content_card.append(p1_card);

p2_card = document.createElement("p");
p2_card.setAttribute("class", "cost");
p2_card.innerText = `Rs.${productData.price_1.medium}`;
// .replace("Rs.","");
content_card.append(p2_card);

button_card = document.createElement("div");
button_card.setAttribute("class", "buttons");
content_card.append(button_card);

size_card = document.createElement("div");
size_card.setAttribute("class", "size");
button_card.append(size_card);

btn1_card = document.createElement("button");
btn1_card.setAttribute("class", "btn-button");
btn1_card.setAttribute("id", "btn-1");
btn1_card.innerText = "tall";
size_card.append(btn1_card);

btn2_card = document.createElement("button");
btn2_card.setAttribute("class", "btn-button");
btn2_card.setAttribute("id", "btn-2");
btn2_card.innerText = "medium";
size_card.append(btn2_card);

btn3_card = document.createElement("button");
btn3_card.setAttribute("class", "btn-button");
btn3_card.setAttribute("id", "btn-3");
btn3_card.innerText = "small";
size_card.append(btn3_card);
// product quantity increase and decrease button

// inc_dec_button_card = document.createElement("div");
// inc_dec_button_card.setAttribute("class", "inc-dec-button");
// button_card.append(inc_dec_button_card);

// inc_dec_card = document.createElement("button");
// inc_dec_card.setAttribute("class", "inc_dec");
// inc_dec_button_card.append(inc_dec_card);

// minus_card = document.createElement("span");
// minus_card.setAttribute("class", "minus");
// inc_dec_card.append(minus_card);

// i1_card = document.createElement("i");
// i1_card.setAttribute("class", "fa-solid fa-minus");
// minus_card.append(i1_card);

// volume_card = document.createElement("span");
// volume_card.setAttribute("class", "volume");
// volume_card.innerText = "0";
// inc_dec_card.append(volume_card);

// plus_card = document.createElement("span");
// plus_card.setAttribute("class", "plus");
// inc_dec_card.append(plus_card);

// i2_card = document.createElement("i");
// i2_card.setAttribute("class", "fa-solid fa-plus");
// plus_card.append(i2_card);

add_item_card = document.createElement("div");
add_item_card.setAttribute("data-id", productData.product_id);

add_item_card.setAttribute("class", "add-item-cart");
button_card.append(add_item_card);

// a_card = document.createElement("a");
// a_card.setAttribute("href", "../../pages/add to cart/addtocart.html");
// add_item_card.append(a_card);

btn4_card = document.createElement("button");
btn4_card.setAttribute("class", "btn-button");
btn4_card.setAttribute("id", "btn-4");
btn4_card.innerText = "Add to the cart";
add_item_card.append(btn4_card);

document.querySelector(".about-product").append(row_card);

const tall = document.getElementById("btn-1");
tall.addEventListener("click", () => {
  p2_card.innerText = `Rs.${productData.price_1.tall}`;
  const sum = p2_card.innerText.replace("Rs.", "");
  p_card.innerText =
    `${productData.quantities.tall.name} ` +
    `(${productData.quantities.tall.quantity})` +
    ` ${productData.quantities.tall.unit} ` +
    `(${productData.quantities.tall.calories} )${productData.quantities.tall.calories_unit}`;
});

const short = document.getElementById("btn-3");
short.addEventListener("click", () => {
  p2_card.innerText = `Rs.${productData.price_1.short}`;
  //(p2_card);

  const sum = p2_card.innerText.replace("Rs.", "");
  //(sum);

  p_card.innerText =
    `${productData.quantities.short.name} ` +
    `(${productData.quantities.short.quantity})` +
    ` ${productData.quantities.short.unit} ` +
    `(${productData.quantities.short.calories})` +
    ` ${productData.quantities.short.calories_unit}`;
});

const medium = document.getElementById("btn-2");
medium.addEventListener("click", () => {
  p2_card.innerText = `Rs.${productData.price_1.medium}`;
  const sum = p2_card.innerText.replace("Rs.", "");

  p_card.innerText =
    `${productData.quantities.medium.name}  ` +
    `(${productData.quantities.medium.quantity}  ` +
    `)${productData.quantities.medium.unit}  ` +
    `(${productData.quantities.medium.calories})${productData.quantities.medium.calories_unit}`;
});
const add_item = document.querySelector(".add-item-cart");
/// ///////////////////////////////////////////////////////
// add_item.addEventListener('click',function(e){

//     let items=[]
//     let unique_id = this.dataset.id;
//     // //(unique_id);

//     if((JSON.parse(localStorage.getItem('items'))==null)){

//         items.push({unique_id});
//         localStorage.setItem('items',JSON.stringify(items));
//         window.location.reload();
//     }else{
//         let localItems = JSON.parse(localStorage.getItem('items'));
//        if(unique_id==localItems["unique_id"]){
//         // // //(unique_id);
//         localItems.push({unique_id});
//         localStorage.setItem('items',JSON.stringify(items));
//        }else{
//         alert('product already exists')
//        }}
//     });

/// /////////////////////////////////////////////////////////////////////|

add_item.addEventListener("click", function (e) {
  const unique_id111 = this.dataset.id;
  localStorage.setItem("unique_id111", JSON.stringify(unique_id111));

  // let cart_id = this.dataset.cart_id;
  // localStorage.setItem("cart_id",JSON.stringify(cart_id));

  // finding the product json
  const product_detail_list = JSON.parse(
    localStorage.getItem("product_detail_list")
  );
  function findProduct(e) {
    return e.product_id == unique_id111;
  }

  productData = product_detail_list.find(findProduct);
  // //(productData);
  // getting unique id
  const unique = JSON.parse(localStorage.getItem("unique_id111"));
  // getting price
  const price = p2_card.innerText;

  const quantity_calories = p_card.innerText;
  // declaring empty string to perform the add to the cart
  const id = "";

  // //(id);

  if (id == "") {
    // introducing an array of objects to get  value , whether the array is already declared or not
    // let arr=  JSON.parse(localStorage.getItem('crud'));
    const add_to_cart = JSON.parse(localStorage.getItem("add_products_cart"));
    const user_id = JSON.parse(localStorage.getItem("unique_id"));
    // checking the  array if is null push newly or push it as a new one or push it into already existed array
    if (add_to_cart == null) {
      // let data=[{unique:unique,quantity_ordered:1,price:p2_card.innerText}];
      const add_to_cart = [
        {
          category: productData.category,
          // "category_description":category_description,
          // "description":description,
          name: productData.name,
          quantities: quantity_calories,
          user_id,
          image:{
            source: productData.image.source,
            alt: "",
          },

          description: productData.description,
          price,
          currency: "Rs.",
          add_to_cart_id: uuidv4(),
          product_id: unique,
          quantity_ordered: 1
        },
      ];
      // localStorage.setItem('crud',JSON.stringify(data));
      localStorage.setItem("add_products_cart", JSON.stringify(add_to_cart));
    } else {
      // let arr = JSON.parse(localStorage.getItem('crud'));
      // let found= false;
      const add_to_cart = JSON.parse(localStorage.getItem("add_products_cart"));
      let logic = false;
      // for loop for checking whether the product already exists or not
      // for(let i=0;i<arr.length;i++){
      //     if(  unique ===  arr[i]['unique'] &&  price === arr[i]['price']){
      //     found = true;
      //    };
      // };
      const unique1 = JSON.parse(localStorage.getItem("unique_id"));
      //(unique1);
      for (let i = 0; i < add_to_cart.length; i++) {
        //(add_to_cart[i].user_id);
        if (
          unique === add_to_cart[i].product_id &&
          price === add_to_cart[i].price &&
          unique1 === add_to_cart[i].user_id
        ) {
          //(add_to_cart[i].user_id);
          logic = true;
        }
      }
      // if(!found){
      //     arr.push({unique:unique,quantity_ordered:1,price:p2_card.innerText} );
      //     localStorage.setItem('crud',JSON.stringify(arr));
      // }
      if (!logic) {
        add_to_cart.push({
          category: productData.category,
          // "category_description":category_description,
          // "description":description,
          name: productData.name,
          quantities: quantity_calories,
          user_id,
          image: {
            src: productData.image.src,
            alt: "",
          },

          description: productData.description,
          price,
          currency: "Rs.",
          product_id: unique,
          add_to_cart_id: uuidv4(),
          quantity_ordered: 1,
        });
        localStorage.setItem("add_products_cart", JSON.stringify(add_to_cart));
      }
    }
  }
  window.location.href = "../../pages/add to cart/addtocart.html";
});

const object1 = JSON.parse(localStorage.getItem("product_detail_list"));

for (i = 0; i < object1.length; i++) {
  if (product !== object1[i].product_id) {
    coffee_items_card = document.createElement("div");
    coffee_items_card.setAttribute("class", "coffee-items");
    //(coffee_items_card);

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
    coffee_message_card.innerText = `${object1[i].quantities.medium.name}( ${object1[i].quantities.medium.quantity}) ${object1[i].quantities.medium.unit}(  ${object1[i].quantities.medium.calories}) ${object1[i].quantities.medium.calories_unit}`;
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
    //(object1[i].product_id);

    coffee_cost_details_card.append(add_items);

    a_card = document.createElement("a");
    // a_card.setAttribute("href","../../pages/productdetail/product-cappu.html?product_id="+object1[i]["product_id"]);
    add_items.append(a_card);

    button_card = document.createElement("button");
    button_card.innerText = "add item";
    a_card.append(button_card);

    document.querySelector(".coffee-products").append(coffee_items_card);
  }
}
// let root = window.location.origin
const btn_add_item = document.querySelectorAll(".add-item");
const user_login_id1 = JSON.parse(localStorage.getItem("user_data"));

btn_add_item.forEach((findId) => {
  findId.addEventListener("click", (e) => {
    if (user_login_id1 == null) {
      alert("login");
    } else {
      const unique_id = findId.dataset.id;
      //(unique_id);

      window.location.href = `../../pages/productdetail/product-cappu.html?product_id=${unique_id}`;
    }
  });
});

const stars = JSON.parse(localStorage.getItem("stars"));

//(stars);
if (stars !== null) {
  const stars1 = stars.filter((type) => type.product_id === product);
  console.log(stars1)
} else {

  document.getElementById("no_reviews").innerText = "no reviews";
}

const stars1 = stars.filter((type) => type.product_id === product);
console.log(stars1)
if (stars1 == "") {
  document.getElementById("no_reviews").innerText = "no reviews";
} else {
  // //(stars1)

  // let show_stars = document.querySelector('.stars1')
  // <span class="star">&#9733;</span>

  // let showing_star=`<i class="fa-solid fa-star"></i>`

  // {/* <div class="customer-review">
  // <div class="review-writer">
  //     <p><i class="fa-solid fa-user"></i>Vicky</p>
  // </div>
  // <div class="star-review">
  // <i class="fa-solid fa-star"></i>
  // <i class="fa-solid fa-star"></i>
  // <i class="fa-solid fa-star"></i>

  // </div>
  // <div class="review-detail">
  // <p>The Green Tea is here is really good.But this time ,it got bit delayed.</p>
  // </div>
  // </div> */}

  for (let i = 0; i < stars1.length; i++) {
    const div_card = document.createElement("div");
    div_card.setAttribute("class", "customer-review");
    document.querySelector(".review-container").append(div_card);

    const user_div_card = document.createElement("div");
    user_div_card.setAttribute("class", "review-writer");
    div_card.append(user_div_card);

    const p_card = document.createElement("p");

    user_div_card.append(p_card);

    const i_card = document.createElement("i");
    i_card.setAttribute("class", "fa-solid fa-user");
    p_card.innerText = `${stars1[i].user_name}   `;
    p_card.append(i_card);

    const showing_star = document.createElement("div");
    showing_star.setAttribute("class", "star-review");
    div_card.append(showing_star);

    for (let j = 0; j < stars1[i].no_of_stars; j++) {
      const icon = document.createElement("i");
      icon.setAttribute("class", "fa-solid fa-star");

      showing_star.append(icon);
      //  showing_star.insertAdjacentHTML("afterbegin",icon);
    }

    //(showing_star);
    const review_info = document.createElement("div");
    review_info.setAttribute("class", "review-detail");
    div_card.append(review_info);

    const p1_card = document.createElement("p");
    p1_card.innerText = stars1[i].review;
    review_info.append(p1_card);
    // showing_star.append(icon);
    // document.querySelector(".hello").insertAdjacentHTML("afterbegin",icon)

    //(div_card);
  }
}

// add_item.addEventListener('click',function(e) {
//     let unique_id = this.dataset.id;
//     // //(unique_id);
//    let crud = JSON.parse(localStorage.getItem('crud')) || [];
//    let exist = crud.length &&
//       JSON.parse(localStorage.getItem('crud')).some(data =>
//          data.unique_id.toLowerCase() == unique_id.toLowerCase()
//          );
//    if (!exist) {
//       let unique = {
//          "unique_id":unique_id,

//       }
//       crud.push(unique);
//       localStorage.setItem("crud", JSON.stringify(crud));
//       location.reload();
//    }else{
//       alert("product already exists");
//    }
// })
