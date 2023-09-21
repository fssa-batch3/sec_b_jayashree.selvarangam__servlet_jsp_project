// let beverage_container;
// let container_card;
// let img_content_cost_card;
// let image_card;
// let img_main_card;
// let content_cost_card;
// let content_card;
// let vegimg_card;
// let img_veg_card;
// let title_card;
// let h3_card;
// let message_1_card;
// let p_1;
// let p_star;
// let i_card;
// let message_2_card;
// let p_2;
// let costdetail_card;
// let cost_card;
// let add_item_card;
// let a_card;
// let button_card;


// const veg_img = ["../../assets/image/veg.svg"];



 

// const category_list1 = JSON.parse(localStorage.getItem("category"))

// let category_list = category_list1.filter((e)=>e.category_status===true);
// console.log(category_list)
// const master_list = JSON.parse(localStorage.getItem("product_detail_list"));
// for(let i=0;i<category_list.length;i++){
  
//   for(let j=0;j<master_list.length;j++){
//   if(category_list[i].category_id == master_list[j].category_id ){
//     category_list[i].value = true;
//     localStorage.setItem('category',JSON.stringify(category_list));
//   }else{
//     category_list[i].value = false;
//     localStorage.setItem('category',JSON.stringify(category_list));
//   }

// }}
// console.log(category_list)
// for(let j=0;j<category_list.length;j++){
//   let filtered_array = [];
  
//   if(category_list[j].value!==true){
//     break;
//   }else{

//     let create_separate_section = document.createElement('section');
//     create_separate_section.setAttribute('class','Coldbrew')
//     document.querySelector('div.whole').append(create_separate_section)
//     let title_card = document.createElement('h3');
//     title_card.setAttribute('class','expressoa-title4');

//     const product_container = document.createElement("div");
//     product_container.setAttribute('class','product_container');

//     title_card.innerText = category_list[j].category;
//     create_separate_section.append(title_card)
//     create_separate_section.append(product_container)

//     for(let i=0;i<master_list.length;i++){
//       if(category_list[j].category_id == master_list[i].category_id){
//         console.log(true);
//         filtered_array.push(master_list[i]);  
//     }
//     console.log(filtered_array)
//   }
//   for(let k=0;k<filtered_array.length;k++){
//     const container_card = render(filtered_array[k]);
//     product_container.append(container_card);
//   }
//   } 
// }






// function render(object) {

//   let beverage_container =  document.createElement('div');
//   beverage_container.setAttribute('class', 'beverage4');
  

//   container_card = document.createElement("div");
//   container_card.setAttribute("class", "beverage-container");
//   beverage_container.append(container_card)

//   img_content_cost_card = document.createElement("div");
//   img_content_cost_card.setAttribute("class", "beverage-img-content-cost");
//   container_card.append(img_content_cost_card);

//   image_card = document.createElement("div");
//   image_card.setAttribute("class", "beverage-image");
//   img_content_cost_card.append(image_card);
 
//   img_main_card = document.createElement("img");
//   img_main_card.setAttribute("src", object.image.source);
//   img_main_card.setAttribute("alt", object.image.alt);
//   image_card.append(img_main_card);

//   content_cost_card = document.createElement("div");
//   content_cost_card.setAttribute("class", "beverage-content-cost");
//   img_content_cost_card.append(content_cost_card);

//   content_card = document.createElement("div");
//   content_card.setAttribute("class", "beverage-content");
//   content_cost_card.append(content_card);

//   vegimg_card = document.createElement("div");
//   vegimg_card.setAttribute("class", "beverage-vegimg");
//   content_card.append(vegimg_card);

//   img_veg_card = document.createElement("img");
//   img_veg_card.setAttribute("src", veg_img[0]);
//   img_veg_card.setAttribute("alt", " ");
//   vegimg_card.append(img_veg_card);

//   title_card = document.createElement("div");
//   title_card.setAttribute("class", "beverage-title");
//   content_card.append(title_card);

//   h3_card = document.createElement("h3");
//   h3_card.innerText = object.name;
//   title_card.append(h3_card);



//   message_1_card = document.createElement("div");
//   message_1_card.setAttribute("class", "beverage-message-1");
//   content_card.append(message_1_card);

//   p_1 = document.createElement("p");
//   p_1.setAttribute("class", "p-1");
//   p_1.innerText =
//     `${object.quantities.medium.name} ` +
//     `(${object.quantities.medium.quantity})` +
//     ` ${object.quantities.medium.unit} ` +
//     `(${object.quantities.medium.calories})` +
//     ` ${object.quantities.medium.calories_unit}`;
//   message_1_card.append(p_1);

//   message_2_card = document.createElement("div");
//   message_2_card.setAttribute("class", "beverage-message-2");
//   content_card.append(message_2_card);

//   p_2 = document.createElement("p");
//   p_2.setAttribute("class", "p-2");
//   p_2.innerText = object.description;
//   message_2_card.append(p_2);

//   costdetail_card = document.createElement("div");
//   costdetail_card.setAttribute("class", "beverage-costdetail");
//   content_cost_card.append(costdetail_card);

//   cost_card = document.createElement("div");
//   cost_card.setAttribute("class", "cost");
//   cost_card.innerText = object.currency + object.price_1.medium;
//   costdetail_card.append(cost_card);

//   add_item_card = document.createElement("div");
//   add_item_card.setAttribute("class", "add-item");
//   costdetail_card.append(add_item_card);
//   // a_card = document.createElement("a");
//   // a_card.setAttribute('href',"");
//   // // a_card.setAttribute("href", `../../pages/productdetail/product-cappu.html` + "?name=" + object["name"] +"&product_id=" + object["product_id"]);
//   // add_item_card.append(a_card);
//   button_card = document.createElement("button");
//   button_card.setAttribute("data-id", object.product_id);
//   button_card.innerText = "add item";
//   button_card.setAttribute("class", "btn-add-item");
//   add_item_card.append(button_card);
//   // document.querySelector(".beverages4").append(container_card);
//   return beverage_container;
// }

//  const btn_add_item = document.querySelectorAll(".btn-add-item");
// const user_login_id1 = JSON.parse(localStorage.getItem("unique_id"));

// btn_add_item.forEach((findId) => {
//   findId.addEventListener("click", (e) => {
//     if (user_login_id1 === null) {
//       alert("login to buy your coffee");
//     } else {
//       const unique_id = findId.dataset.id;
//       // console.log(unique_id)
//       location.href = `../../pages/productdetail/product-cappu.html?product_id=${unique_id}`;
//     }
//   });
// });

let beverage_container;
let container_card;
let img_content_cost_card;
let image_card;
let img_main_card;
let content_cost_card;
let content_card;
let vegimg_card;
let img_veg_card;
let title_card;
let h3_card;
let message_1_card;
let p_1;
let p_star;
let i_card;
let message_2_card;
let p_2;
let costdetail_card;
let cost_card;
let add_item_card;
let a_card;
let button_card;

// const main_img=["../../assets/image/redhatmocha.jpg","../../assets/image/cappacino.jpg","../../assets/image/hazelnutmochacheese.jpg","../../assets/image/carameljava.jpg","../../assets/image/pourover.jpg","../../assets/image/pourover.jpg","../../assets/image/chaitea.jpg","../../assets/image/emperortea.jpg","../../assets/image/coldcold.jpg"]
const veg_img = ["../../assets/image/veg.svg"]
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
// //(urlParams);
const category_id = urlParams.get("category_id");
 console.log(category_id);
 const category_array = JSON.parse(localStorage.getItem('category'))
 let category_array1 = category_array.find((e)=>e.category_id ===category_id)
console.log(category_array1)

const product_list = JSON.parse(localStorage.getItem("product_detail_list"));
const current_category = product_list.filter(function category(type) {
    return type.category=== category_id;
}
); 
console.log(current_category)
if(current_category.length!==0){
  for (let i = 0; i < current_category.length; i++) {
    // <h3 class="expressoa-title">Espresso</h3>
    // <p class="expressoa-p">Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do</p>
    if(current_category !== null  && i=== 0 ){
        let coffee_title = document.querySelector('.expressoa-title');
        coffee_title.innerText= category_array1['category'];
    };
    const container_card = render(current_category[i]);
    document.querySelector(".beverages").append(container_card);
}
}else{
  const container_card = document.createElement('img');
  container_card.setAttribute('src',"../../assets/image/product-not-found.jpg");
  container_card.setAttribute('alt',"product not found");
  container_card.setAttribute('class',"product-not-found");
  container_card.setAttribute('style',"margin-left:500px");

  document.querySelector(".beverages1").append(container_card);
}






function render(object) {  






    container_card = document.createElement("div");
    container_card.setAttribute("class", "beverage-container");
    // container_card.append(beverages)
  
    img_content_cost_card = document.createElement("div");
    img_content_cost_card.setAttribute("class", "beverage-img-content-cost");
    container_card.append(img_content_cost_card);

    image_card = document.createElement("div");
    image_card.setAttribute("class", "beverage-image");
    img_content_cost_card.append(image_card);

    img_main_card = document.createElement("img");
    img_main_card.setAttribute("src", object["image"]["src"]);
    img_main_card.setAttribute("alt", object["image"]["alt"])
    image_card.append(img_main_card);

    content_cost_card = document.createElement("div");
    content_cost_card.setAttribute("class", "beverage-content-cost");
    img_content_cost_card.append(content_cost_card);

    content_card = document.createElement("div");
    content_card.setAttribute("class", "beverage-content");
    content_cost_card.append(content_card)

    vegimg_card = document.createElement("div");
    vegimg_card.setAttribute("class", "beverage-vegimg");
    content_card.append(vegimg_card);

    img_veg_card = document.createElement("img");
    img_veg_card.setAttribute("src", veg_img[0]);
    img_veg_card.setAttribute("alt", " ");
    vegimg_card.append(img_veg_card);

    title_card = document.createElement("div");
    title_card.setAttribute("class", "beverage-title");
    content_card.append(title_card);

    h3_card = document.createElement("h3");
    h3_card.innerText = object["name"];
    title_card.append(h3_card);


    message_1_card = document.createElement("div");
    message_1_card.setAttribute("class", "beverage-message-1");
    content_card.append(message_1_card);



    p_1 = document.createElement("p");
    p_1.setAttribute("class", "p-1");
    p_1.innerText = object["quantities"]["medium"]["name"]+" "+"("+
    object["quantities"]["medium"]["quantity"]+")"+" "+
    object["quantities"]["medium"]["unit"] +" "+"("+
    object["quantities"]["medium"]["calories"]+")"+" "+
    object["quantities"]["medium"]["calories_unit"];
    message_1_card.append(p_1);

    message_2_card = document.createElement("div");
    message_2_card.setAttribute("class", "beverage-message-2");
    content_card.append(message_2_card);

    p_2 = document.createElement("p");
    p_2.setAttribute("class", "p-2");
    p_2.innerText = object["description1"];
    message_2_card.append(p_2);

    costdetail_card = document.createElement("div");
    costdetail_card.setAttribute("class", "beverage-costdetail");
    content_cost_card.append(costdetail_card);

    cost_card = document.createElement("div");
    cost_card.setAttribute("class", "cost");
    cost_card.innerText = object["currency"] + object["price_1"]["medium"];
    costdetail_card.append(cost_card);

    add_item_card = document.createElement("div");
    add_item_card.setAttribute("class", "add-item");

    costdetail_card.append(add_item_card);

    // a_card = document.createElement("a");
    // a_card.setAttribute('href',"");
    // // a_card.setAttribute("href", `../../pages/productdetail/product-cappu.html` + "?name=" + object["name"] +"&product_id=" + object["product_id"]);
    // add_item_card.append(a_card);


    button_card = document.createElement("button");
    button_card.setAttribute("data-id",object["product_id"]);
    button_card.innerText = "add item";
    
    button_card.setAttribute("class","btn-add-item")
    add_item_card.append(button_card);

    // document.querySelector(".beverages4").append(container_card);

    return container_card;


}


let btn_add_item = document.querySelectorAll(".btn-add-item");
let user_login_id1 = JSON.parse(localStorage.getItem('unique_id'));

btn_add_item.forEach(findId =>{
    findId.addEventListener('click',function(e){
        if(user_login_id1 === null){
            alert('login to buy your coffee');
        }else{
        let unique_id = findId.dataset.id;
        // console.log(unique_id)
        location.href=`../../pages/productdetail/product-cappu.html?product_id=${unique_id}`
        };
    });
});


