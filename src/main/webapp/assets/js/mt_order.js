// //location.reload();

// let your_cart_card;
// let beverage_card;
// let beverage_container_card;
// let beverage_image_card;
// let image;
// let beverage_content_card;
// let beverage_title_card;
// let beverage_message_card;
// let cost;
// let quantity_card;
// let inc_dec_button;
// let order_card;
// let p_card;
// let beverage_costdetail_card;
// let delivery_card;
// let p_1;
// let go_back;
// let a_card;

// const order1 = JSON.parse(localStorage.getItem("orders"));

// const user_id = JSON.parse(localStorage.getItem("unique_id"));
// const groupedOrders = order1.filter((type) => type.user_id === user_id);

// const orders = groupedOrders.reduce((acc, curr) => {
//   const existingUuid = acc.findIndex(
//     (order) =>
//       order[0].ordered_object_at_a_time === curr.ordered_object_at_a_time
//   );
//   if (existingUuid !== -1) {
//     acc[existingUuid].push(curr);
//   } else {
//     acc.push([curr]);
//   }
//   return acc;
// }, []);
// console.log(orders);
// localStorage.setItem("groupedOrders", JSON.stringify(orders));
// // console.log(order);

// for (i = 0; i < orders.length; i++) {
//   const group = orders[i];
//   let value;
//   let cancel;
//   let order_id1;
//   let total_price;

//   let whole_package;
//   whole_package = document.createElement("div");
//   whole_package.setAttribute("class", "whole-package");
//   document.querySelector(".whole").append(whole_package);
  
  
//   total_price = document.createElement("div");
//   total_price.setAttribute("class", "total_price1");
//   whole_package.append(total_price);

//   let  total_price3 = document.createElement("div");
//   total_price3.setAttribute("class", "total_price2");
//   total_price3.innerText= 'Total-price:';
//   total_price.append(total_price3);

//   let total_price1 = document.createElement("div");
//    total_price1.setAttribute("class", "total_price3");
//    total_price1.innerText= orders[i][0]['total_price'];
//    total_price.append(total_price1);

//   order_id1 = document.createElement("div")
//   order_id1.setAttribute("class", "order_id1");
//   whole_package.append(order_id1);

//     let order_id3 =document.createElement("div");
//     order_id3.setAttribute("class", "order_id2");
//     order_id3.innerText= 'Order_id:';
//     order_id1.append(order_id3);

//     let order_id2 = document.createElement("div");
//     order_id2.setAttribute("class", "order_id3");
//     order_id2.innerText= orders[0][0]['order_id_for_customer']
//     order_id1.append(order_id2);
//     //  let beverage_container_card1 = document.createElement("div");
//     //   beverage_container_card1.setAttribute("class", "beverage-container");
//     //   beverage_container_card1.innerText= orders[i][0]['ordered_object_at_a_time']
//     //  document.querySelector(".whole").append(beverage_container_card1);

//   for (let j = 0; j < group.length; j++) {
//     const order = group[j];
   

//     your_cart_card = document.createElement("section");
//     your_cart_card.setAttribute("class", "Yourcart");
//     // console.log(your_cart_card);

//     beverage_card = document.createElement("div");
//     beverage_card.setAttribute("class", "beverage");
//     your_cart_card.append(beverage_card);

//     //    let beverage_container_card1 = document.createElement("div");
//     //     beverage_container_card1.setAttribute("class", "beverage-container");
//     //     beverage_container_card1.innerText=order['ordered_object_at_a_time']

//     //     beverage_card.append(beverage_container_card1);

//     beverage_container_card = document.createElement("div");
//     beverage_container_card.setAttribute("class", "beverage-container");
//     beverage_card.append(beverage_container_card);

//     beverage_image_card = document.createElement("div");
//     beverage_image_card.setAttribute("class", "beverage-image");
//     beverage_container_card.append(beverage_image_card);

//     image = document.createElement("img");
//     image.setAttribute("src", order.image.src);
//     beverage_image_card.append(image);

//     beverage_content_card = document.createElement("div");
//     beverage_content_card.setAttribute("class", "beverage-content");
//     beverage_container_card.append(beverage_content_card);

//     beverage_title_card = document.createElement("div");
//     beverage_title_card.setAttribute("class", "beverage-title");
//     beverage_title_card.innerText = order.name;
//     beverage_content_card.append(beverage_title_card);

//     beverage_message_card = document.createElement("div");
//     beverage_message_card.setAttribute("class", "beverage-message");
//     beverage_message_card.innerText = order.quantities;
//     beverage_content_card.append(beverage_message_card);

//     cost = document.createElement("div");
//     cost.setAttribute("class", "cost");
//     cost.innerText = order.price;
//     beverage_content_card.append(cost);

//     quantity_card = document.createElement("div");
//     quantity_card.setAttribute("class", "quantity");
//     quantity_card.innerText = order.quantity_ordered;
//     beverage_container_card.append(quantity_card);

//     const mode_of_delivery_card = document.createElement("div");
//     mode_of_delivery_card.setAttribute("class", "mode_of_delivery");
//     mode_of_delivery_card.innerText = order.mode_of_delivery;
//     beverage_container_card.append(mode_of_delivery_card);

//     inc_dec_button = document.createElement("div");
//     inc_dec_button.setAttribute("class", "inc-dec-button");
//     beverage_container_card.append(inc_dec_button);

//     order_card = document.createElement("div");
//     order_card.setAttribute("class", " ordered-date");
//     inc_dec_button.append(order_card);

//     p_card = document.createElement("p");
//     p_card.innerText = order.date;
//     order_card.append(p_card);
//     // {/* <div class="beverage-costdetail1">
//     // <div class="delivery-status1">
//     // <div class ="cancel" ><button id="cancel_1">cancel</button></div>
//     // <div class ="reorder" ><button id="reorder_1" >reorder</button></div>
//     // </div>
//     // </div> */}

//     beverage_costdetail_card = document.createElement("div");
//     beverage_costdetail_card.setAttribute("class", "beverage-costdetail");
//     beverage_container_card.append(beverage_costdetail_card);

//     delivery_card = document.createElement("div");
//     delivery_card.setAttribute("class", "delivery-status");
//     beverage_costdetail_card.append(delivery_card);

//     p_1 = document.createElement("p");

//     // p_1.innerText=order[i]['delivery'];

//     // delivery status pending
//     // console.log(order[i]['time_check']);
//     if (order.delivery == "delivered") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:red");
//     } else if (order.delivery == "cancelled") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:grey");
//     }
//     if (order.delivery == "not delivered") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:green");
//     }
//     delivery_card.append(p_1);
//     go_back = document.createElement("div");
//     go_back.setAttribute("class", "Goback");
//     beverage_costdetail_card.append(go_back);

//     if (order.review !== true && order.delivery === "delivered") {
//       a_card = document.createElement("a");
//       a_card.setAttribute(
//         "href",
//         "../../pages/fill forms/review.html" +
//           "?" +
//           `order_id=${order.order_id}&&` +
//           `product_id=${order.product_id}&&` +
//           `order1_id=${order.order_id}`
//       );
//       a_card.innerText = "Write your review";

//       go_back.append(a_card);
//     } else {
//       a_card = document.createElement("a");
//       a_card.setAttribute("style", "display:none");
//       a_card.innerText = "Write your review";
//       go_back.append(a_card);
//     }
//     const beverage_costdetail_card1 = document.createElement("div");
//     beverage_costdetail_card1.setAttribute("class", "beverage-costdetail1");
//     beverage_container_card.append(beverage_costdetail_card1);

//     const delivery_card1 = document.createElement("div");
//     delivery_card1.setAttribute("class", "delivery-status1");
//     beverage_costdetail_card1.append(delivery_card1);

//     if (order.delivery == "delivered" || order.delivery == "cancelled" ) {
//        value =  true
//       // const cancel = document.createElement("div");
//       // cancel.setAttribute("class", "cancel");
//       // delivery_card1.append(cancel);

//       // const cancel_1 = document.createElement("button");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("data-id", order.order_id);
//       // cancel_1.setAttribute("style", "display:none");
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//     } else {
//       value = false
//       // const cancel = document.createElement("div");
//       // cancel.setAttribute("class", "cancel");
//       // delivery_card1.append(cancel);
//       // const cancel_1 = document.createElement("button");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("data-id", order.order_id);
//       // cancel_1.setAttribute("data-order_id", order.ordered_object_at_a_time);
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//     }
//     const reorder = document.createElement("div");
//     reorder.setAttribute("class", "reorder");
//     delivery_card1.append(reorder);
//     const reorder_1 = document.createElement("button");
//     reorder_1.setAttribute("id", "reorder_1");
//     reorder_1.setAttribute("data-cart_id", order.add_to_cart_id);
//     reorder_1.innerText = "reorder";
//     reorder.append(reorder_1);

    
  

   
//     document.querySelector(".whole").append(your_cart_card);
//     if (j === orders[i].length - 1) {
//       const new_card = document.createElement("div");
//       new_card.setAttribute("class", "hello");
//       new_card.style.borderBottom = "1px  solid black";
//       console.log(new_card);
//       beverage_card.append(new_card);
//     }}

//   cancel = document.createElement("div");
//   cancel.setAttribute("class", "cancel");
//   whole_package.append(cancel);

 
//       // const cancel_1 = document.createElement("a");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("style", "display:none");
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//    if(value!==true){
//       const cancel_1 = document.createElement("a");
//       cancel_1.setAttribute("id", "cancel_1");
//       cancel_1.setAttribute("data-order_id", group[0].ordered_object_at_a_time);
//       cancel_1.innerText = "cancel";
//       cancel.append(cancel_1);
//    }
    
// }

// const removeOrder = document.querySelectorAll("#cancel_1");
// removeOrder.forEach((remove_id) => {
//   remove_id.addEventListener("click", function () {
//     const cartId = this.dataset.order_id;
//     const product_order = JSON.parse(localStorage.getItem("orders"));
//     const remove_food = product_order.filter(
//       (type) => type.ordered_object_at_a_time === cartId
//     );
//     console.log(remove_food);
//     remove_food.forEach((object) => {
//       object.delivery = "cancelled";
//     });
//     localStorage.setItem("orders", JSON.stringify(product_order));
//     location.reload();
//   });
// });

// // if( JSON.parse(localStorage.getItem('orders')) == null){
// //    let p_alert =document.querySelector('.alert')
// //    p_alert.innerText = 'no products in my orders';
// // }

// const re_order1 = document.querySelectorAll("#reorder_1");
// re_order1.forEach((add_products) => {
//   add_products.addEventListener("click", function () {
//     const cartId = this.dataset.cart_id;
//     localStorage.setItem("cart_id", JSON.stringify(cartId));
//     console.log(cartId);
//     const product_order = JSON.parse(localStorage.getItem("orders"));
//     const newArr = product_order.map(
//       ({
//         date,
//         delivery,
//         order_id,
//         mode_of_delivery,
//         delivery_address,
//         time_check,
//         before_30_minutes,
//         order_id_for_customer,
//         ordered_object_at_a_time,
//         ...rest
//       }) => rest
//     );
//     console.log(newArr);
//     const new_array_prod = localStorage.setItem(
//       "newArr",
//       JSON.stringify(newArr)
//     );
//     console.log(product_order);
//     const get_array_prod = JSON.parse(localStorage.getItem("newArr"));

//     function find_id(e) {
//       return e.add_to_cart_id === cartId;
//     }
//     const add_food = get_array_prod.find(find_id);
//     console.log(add_food);
//     const cartId1 = JSON.parse(localStorage.getItem("cart_id"));
//     const check = "";
//     if (check == "") {
//       const cart_products = JSON.parse(
//         localStorage.getItem("add_products_cart")
//       );
//       if (cart_products == null) {
//         cart_products.push(add_food);
//         localStorage.setItem(
//           "add_products_cart",
//           JSON.stringify(cart_products)
//         );
//       } else {
//         const add_to_cart = JSON.parse(
//           localStorage.getItem("add_products_cart")
//         );
//         let logic = false;
//         console.log(logic);
//         for (let i = 0; i < add_to_cart.length; i++) {
//           if (cartId1 === add_to_cart[i].add_to_cart_id) {
//             logic = true;
//           }
//         }

//         if (!logic) {
//           add_to_cart.push(add_food);
//           localStorage.setItem(
//             "add_products_cart",
//             JSON.stringify(add_to_cart)
//           );
//         }
//       }
//     }
//     window.location.href = "../../pages/add to cart/addtocart.html";
//   });
// });

// // let before_30_minutes = moment().add({minutes:2}).format('YYYY-MM-DD hh:mm:ssA');
// // // console.log(before_30_minutes);
// // console.log(order[i]["before_30_minutes"] );
// // // let m = moment().toString();
// // let m = moment().format("YYYY-MM-DD hh:mm:ssA").toString();
// // console.log(m)
// // if(m >= order[i]["before_30_minutes"]){
// //     // p_1.innerText=order[i]['delivery']['del_status1'];
// //     p_1.innerText = order[i]['delivery']['del_status1'] ;
// //     order[i]['delivery']['del_status'] = 'delivered'

// //     // console.log(order[i]['time_check']);

// // }else{
// //     p_1.innerText=order[i]['delivery']['del_status']
// //     console.log("rajini");
// // };

// // let  order1 = JSON.parse(localStorage.getItem('orders'));

// const m = moment().format("YYYY-MM-DD hh:mm:ssA").toString();
// console.log(m);
// const find_notDelivered_data = groupedOrders.filter(
//   (data) => data.delivery == "not delivered"
// );
// console.log(find_notDelivered_data);
// for (i = 0; i < find_notDelivered_data.length; i++) {
//   if (find_notDelivered_data[i].before_30_minutes <= m) {
//   find_notDelivered_data[i].delivery = "delivered";
//   localStorage.setItem("orders", JSON.stringify(groupedOrders));
    
//   }
// }

// for (i = 0; i < find_notDelivered_data.length; i++) {
//   if (find_notDelivered_data[i].before_5_minutes <= m) {
//   let cancel =  document.getElementById('cancel_1');
//   cancel.setAttribute('style',"display:none");
//   }
// }
// ///////////////////
// new code 
const order1 = JSON.parse(localStorage.getItem("orders"));
const user_id = JSON.parse(localStorage.getItem("unique_id"));
const groupedOrders = order1.filter((type) => type.user_id === user_id);

const orders = groupedOrders.reduce((acc, curr) => {
  const existingUuid = acc.findIndex(
    (order) => order[0].ordered_object_at_a_time === curr.ordered_object_at_a_time
  );
  if (existingUuid !== -1) {
    acc[existingUuid].push(curr);
  } else {
    acc.push([curr]);
  }
  return acc;
}, []);

localStorage.setItem("groupedOrders", JSON.stringify(orders));

for (let i = 0; i < orders.length; i++) {
  const group = orders[i];
  const deliveryStatus = group[0].delivery;
  let value;

  let orderItemHTML = `
    <div class="order-item">
      <div class="o-d">
        <div class="req">
          <div class="order1_id">
            <h3>Order_id: ${group[0].order_id_for_customer}</h3>
          </div>
          <div class="order_date">
            <p>Ordered on: ${group[0].date}</p>
          </div>
          <div class="mode">
            <p>Mode of Delivery: ${group[0].mode_of_delivery}</p>
          </div>
          <div class="status">
            <p>${deliveryStatus}</p>
          </div>
        </div>
        <div class="whole_order_details_${i}"></div>
        <div class="delivery-address">
          <h4>Delivery Address:</h4>
          <p>${group[0].delivery_address}</p>
        </div>
        <div class="order-total">
          <h4>Total Price:</h4>
          <p>Rs. ${group[0].total_price}</p>
        </div>
        <div class="order-actions">
          <!-- <button class="reorder-btn">Reorder All</button> -->
          <button id="cancel_${i + 1}" data-order_id="${group[0].ordered_object_at_a_time}" class="cancel-btn">Cancel</button>
        </div>
      </div>
    </div>
  `;

  document.querySelector('.ul-1').insertAdjacentHTML('beforeend', orderItemHTML);

  const orderDetailsContainer = document.querySelector(`.whole_order_details_${i}`);

  for (let j = 0; j < group.length; j++) {
    const item = group[j];
 
    let writeReviewHTML = '';

    if (deliveryStatus === "delivered" && !item.review) {
      writeReviewHTML = `<a href="../../pages/fill forms/review.html?product_id=${item.product_id}&&order_id=${item.order_id}">Write your review</a>`;
      console.log(1)
    } else {
      writeReviewHTML = '';
      console.log(2)
    }
    

    let orderDetailsHTML = `
      <div class="order-details">
        <div class="product">
          <img src="${item.image.src}" alt="Coffee 3">
          <div class="product-info">
            <h4>${item.name}</h4>
            <p>${item.quantities}</p>
            <p>Price: ${item.price}</p>
          </div>
        </div>
        <div class="quantity">
          <p>Quantity: ${item.quantity_ordered}</p>
        </div>
        <div class="review1">
          ${writeReviewHTML}
        </div>
        <div class="reorder1">
          <button id="reorder_${i + 1}" data-cart_id="${item.add_to_cart_id}" class="reorder-btn">Reorder</button>
        </div>
      </div>
    `;

    orderDetailsContainer.insertAdjacentHTML('beforeend', orderDetailsHTML);
  }

  if (deliveryStatus === "delivered" ||deliveryStatus === "cancelled" ) {
    const cancelBtn = document.querySelector(`#cancel_${i + 1}`);
    cancelBtn.style.display = "none";
  }
}

////////////////////////////////////////////////
const m = moment().format("YYYY-MM-DD hh:mm:ssA").toString();
console.log(m);
const find_notDelivered_data = groupedOrders.filter(
  (data) => data.delivery === "not delivered"
);
console.log(find_notDelivered_data);
for (let i = 0; i < find_notDelivered_data.length; i++) {
  if (find_notDelivered_data[i].before_30_minutes <= m) {
    find_notDelivered_data[i].delivery = "delivered";
    localStorage.setItem("orders", JSON.stringify(groupedOrders));
  }
}
let value;
const cancelBtns = document.querySelectorAll('.cancel-btn');
for (let i = 0; i < find_notDelivered_data.length; i++) {
  if (find_notDelivered_data[i].before_5_minutes <= m) {
    const orderId = find_notDelivered_data[i].ordered_object_at_a_time;
    const matchingCancelBtn = [...cancelBtns].find(btn => btn.getAttribute('data-order_id') === orderId);
    if (matchingCancelBtn) {
      matchingCancelBtn.style.display = "none";
      console.log(true);
    }
  }
}

// for (let i = 0; i < find_notDelivered_data.length; i++) {
//   if (find_notDelivered_data[i].before_5_minutes <= m) {
//     const cancelBtns = document.querySelectorAll('.cancel-btn');
//     cancelBtns[i].style.display = "none";
//     console.log(true);
//   }
// }

// for (let i = 0; i < find_notDelivered_data.length; i++) {
//   if (find_notDelivered_data[i].before_5_minutes <= m) {
//     const cancelBtn = document.querySelector(`#cancel_${i + 1}`);
//     cancelBtn.style.display = "none";
//     console.log(183)
//   } 
// }
// ...


// ...
// ...


// ...

// here ends the code
////////////////////////////////////////////////
// const order11 = JSON.parse(localStorage.getItem("orders"));

// const user_id11 = JSON.parse(localStorage.getItem("unique_id"));
// const groupedOrders1 = order1.filter((type) => type.user_id === user_id);

// const orders1 = groupedOrders.reduce((acc, curr) => {
//   const existingUuid = acc.findIndex(
//     (order) =>
//       order[0].ordered_object_at_a_time === curr.ordered_object_at_a_time
//   );
//   if (existingUuid !== -1) {
//     acc[existingUuid].push(curr);
//   } else {
//     acc.push([curr]);
//   }
//   return acc;
// }, []);
// console.log(orders);
// localStorage.setItem("groupedOrders", JSON.stringify(orders));
// // console.log(order);

// for (i = 0; i < orders.length; i++) {
//   const group = orders[i];
//   let value;
//   let cancel;
//   let order_id1;
//   let total_price;

//   let whole_package;
//   whole_package = document.createElement("div");
//   whole_package.setAttribute("class", "whole-package");
//   document.querySelector(".whole").append(whole_package);
  
  
//   total_price = document.createElement("div");
//   total_price.setAttribute("class", "total_price1");
//   whole_package.append(total_price);

//   let  total_price3 = document.createElement("div");
//   total_price3.setAttribute("class", "total_price2");
//   total_price3.innerText= 'Total-price:';
//   total_price.append(total_price3);

//   let total_price1 = document.createElement("div");
//    total_price1.setAttribute("class", "total_price3");
//    total_price1.innerText= orders[i][0]['total_price'];
//    total_price.append(total_price1);

//   order_id1 = document.createElement("div")
//   order_id1.setAttribute("class", "order_id1");
//   whole_package.append(order_id1);

//     let order_id3 =document.createElement("div");
//     order_id3.setAttribute("class", "order_id2");
//     order_id3.innerText= 'Order_id:';
//     order_id1.append(order_id3);

//     let order_id2 = document.createElement("div");
//     order_id2.setAttribute("class", "order_id3");
//     order_id2.innerText= orders[0][0]['order_id_for_customer']
//     order_id1.append(order_id2);
//     //  let beverage_container_card1 = document.createElement("div");
//     //   beverage_container_card1.setAttribute("class", "beverage-container");
//     //   beverage_container_card1.innerText= orders[i][0]['ordered_object_at_a_time']
//     //  document.querySelector(".whole").append(beverage_container_card1);

//   for (let j = 0; j < group.length; j++) {
//     const order = group[j];
   

//     your_cart_card = document.createElement("section");
//     your_cart_card.setAttribute("class", "Yourcart");
//     // console.log(your_cart_card);

//     beverage_card = document.createElement("div");
//     beverage_card.setAttribute("class", "beverage");
//     your_cart_card.append(beverage_card);

//     //    let beverage_container_card1 = document.createElement("div");
//     //     beverage_container_card1.setAttribute("class", "beverage-container");
//     //     beverage_container_card1.innerText=order['ordered_object_at_a_time']

//     //     beverage_card.append(beverage_container_card1);

//     beverage_container_card = document.createElement("div");
//     beverage_container_card.setAttribute("class", "beverage-container");
//     beverage_card.append(beverage_container_card);

//     beverage_image_card = document.createElement("div");
//     beverage_image_card.setAttribute("class", "beverage-image");
//     beverage_container_card.append(beverage_image_card);

//     image = document.createElement("img");
//     image.setAttribute("src", order.image.src);
//     beverage_image_card.append(image);

//     beverage_content_card = document.createElement("div");
//     beverage_content_card.setAttribute("class", "beverage-content");
//     beverage_container_card.append(beverage_content_card);

//     beverage_title_card = document.createElement("div");
//     beverage_title_card.setAttribute("class", "beverage-title");
//     beverage_title_card.innerText = order.name;
//     beverage_content_card.append(beverage_title_card);

//     beverage_message_card = document.createElement("div");
//     beverage_message_card.setAttribute("class", "beverage-message");
//     beverage_message_card.innerText = order.quantities;
//     beverage_content_card.append(beverage_message_card);

//     cost = document.createElement("div");
//     cost.setAttribute("class", "cost");
//     cost.innerText = order.price;
//     beverage_content_card.append(cost);

//     quantity_card = document.createElement("div");
//     quantity_card.setAttribute("class", "quantity");
//     quantity_card.innerText = order.quantity_ordered;
//     beverage_container_card.append(quantity_card);

//     const mode_of_delivery_card = document.createElement("div");
//     mode_of_delivery_card.setAttribute("class", "mode_of_delivery");
//     mode_of_delivery_card.innerText = order.mode_of_delivery;
//     beverage_container_card.append(mode_of_delivery_card);

//     inc_dec_button = document.createElement("div");
//     inc_dec_button.setAttribute("class", "inc-dec-button");
//     beverage_container_card.append(inc_dec_button);

//     order_card = document.createElement("div");
//     order_card.setAttribute("class", " ordered-date");
//     inc_dec_button.append(order_card);

//     p_card = document.createElement("p");
//     p_card.innerText = order.date;
//     order_card.append(p_card);
//     // {/* <div class="beverage-costdetail1">
//     // <div class="delivery-status1">
//     // <div class ="cancel" ><button id="cancel_1">cancel</button></div>
//     // <div class ="reorder" ><button id="reorder_1" >reorder</button></div>
//     // </div>
//     // </div> */}

//     beverage_costdetail_card = document.createElement("div");
//     beverage_costdetail_card.setAttribute("class", "beverage-costdetail");
//     beverage_container_card.append(beverage_costdetail_card);

//     delivery_card = document.createElement("div");
//     delivery_card.setAttribute("class", "delivery-status");
//     beverage_costdetail_card.append(delivery_card);

//     p_1 = document.createElement("p");

//     // p_1.innerText=order[i]['delivery'];

//     // delivery status pending
//     // console.log(order[i]['time_check']);
//     if (order.delivery == "delivered") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:red");
//     } else if (order.delivery == "cancelled") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:grey");
//     }
//     if (order.delivery == "not delivered") {
//       p_1.innerText = order.delivery;
//       // p_1.setAttribute("style", "color:green");
//     }
//     delivery_card.append(p_1);
//     go_back = document.createElement("div");
//     go_back.setAttribute("class", "Goback");
//     beverage_costdetail_card.append(go_back);
//      console.log(order.review)
//     if (order.review !== true && order.delivery === "delivered") {
//       a_card = document.createElement("a");
//       a_card.setAttribute(
//         "href",
//         "../../pages/fill forms/review.html" +
//           "?" +
//           `order_id=${order.order_id}&&` +
//           `product_id=${order.product_id}&&` +
//           `order1_id=${order.order_id}`
//       );
//       a_card.innerText = "Write your review";

//       go_back.append(a_card);
//     } else {
//       a_card = document.createElement("a");
//       a_card.setAttribute("style", "display:none");
//       a_card.innerText = "Write your review";
//       go_back.append(a_card);
//     }
//     const beverage_costdetail_card1 = document.createElement("div");
//     beverage_costdetail_card1.setAttribute("class", "beverage-costdetail1");
//     beverage_container_card.append(beverage_costdetail_card1);

//     const delivery_card1 = document.createElement("div");
//     delivery_card1.setAttribute("class", "delivery-status1");
//     beverage_costdetail_card1.append(delivery_card1);

//     if (order.delivery == "delivered") {
//        value =  true
//       // const cancel = document.createElement("div");
//       // cancel.setAttribute("class", "cancel");
//       // delivery_card1.append(cancel);

//       // const cancel_1 = document.createElement("button");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("data-id", order.order_id);
//       // cancel_1.setAttribute("style", "display:none");
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//     } else {
//       value = false
//       // const cancel = document.createElement("div");
//       // cancel.setAttribute("class", "cancel");
//       // delivery_card1.append(cancel);
//       // const cancel_1 = document.createElement("button");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("data-id", order.order_id);
//       // cancel_1.setAttribute("data-order_id", order.ordered_object_at_a_time);
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//     }
//     const reorder = document.createElement("div");
//     reorder.setAttribute("class", "reorder");
//     delivery_card1.append(reorder);
//     const reorder_1 = document.createElement("button");
//     reorder_1.setAttribute("id", "reorder_1");
//     reorder_1.setAttribute("data-cart_id", order.add_to_cart_id);
//     reorder_1.innerText = "reorder";
//     reorder.append(reorder_1);

    
  

   
//     document.querySelector(".whole").append(your_cart_card);
//     if (j === orders[i].length - 1) {
//       const new_card = document.createElement("div");
//       new_card.setAttribute("class", "hello");
//       new_card.style.borderBottom = "1px  solid black";
//       console.log(new_card);
//       beverage_card.append(new_card);
//     }}

//   cancel = document.createElement("div");
//   cancel.setAttribute("class", "cancel");
//   whole_package.append(cancel);

 
//       // const cancel_1 = document.createElement("a");
//       // cancel_1.setAttribute("id", "cancel_1");
//       // cancel_1.setAttribute("style", "display:none");
//       // cancel_1.innerText = "cancel";
//       // cancel.append(cancel_1);
//    if(value!==true){
//       const cancel_1 = document.createElement("a");
//       cancel_1.setAttribute("id", "cancel_1");
//       cancel_1.setAttribute("data-order_id", group[0].ordered_object_at_a_time);
//       cancel_1.innerText = "cancel";
//       cancel.append(cancel_1);
//    }
    
// }

const removeOrder = document.querySelectorAll(".cancel-btn");
removeOrder.forEach((remove_id) => {
  remove_id.addEventListener("click", function () {
    const cartId = this.dataset.order_id;
    const product_order = JSON.parse(localStorage.getItem("orders"));
    const remove_food = product_order.filter(
      (type) => type.ordered_object_at_a_time === cartId
    );
    console.log(remove_food);
    remove_food.forEach((object) => {
      object.delivery = "cancelled";
    });
    localStorage.setItem("orders", JSON.stringify(product_order));
    location.reload();
  });
});

// if( JSON.parse(localStorage.getItem('orders')) == null){
//    let p_alert =document.querySelector('.alert')
//    p_alert.innerText = 'no products in my orders';
// }

const re_order1 = document.querySelectorAll(".reorder-btn");
re_order1.forEach((add_products) => {
  add_products.addEventListener("click", function () {
    const cartId = this.dataset.cart_id;
    localStorage.setItem("cart_id", JSON.stringify(cartId));
    console.log(cartId);
    const product_order = JSON.parse(localStorage.getItem("orders"));
    const newArr = product_order.map(
      ({
        date,
        delivery,
        order_id,
        mode_of_delivery,
        delivery_address,
        time_check,
        before_30_minutes,
        total_price,before_5_minutes,
        order_id_for_customer,
        ordered_object_at_a_time,
        ...rest
      }) => rest
    );
    console.log(newArr);
    const new_array_prod = localStorage.setItem(
      "newArr",
      JSON.stringify(newArr)
    );
    console.log(product_order);
    const get_array_prod = JSON.parse(localStorage.getItem("newArr"));

    function find_id(e) {
      return e.add_to_cart_id === cartId;
    }
    const add_food = get_array_prod.find(find_id);
    console.log(add_food);
    const cartId1 = JSON.parse(localStorage.getItem("cart_id"));
    const check = "";
    if (check == "") {
      const cart_products = JSON.parse(
        localStorage.getItem("add_products_cart")
      );
      if (cart_products == null) {
        cart_products.push(add_food);
        localStorage.setItem(
          "add_products_cart",
          JSON.stringify(cart_products)
        );
      } else {
        const add_to_cart = JSON.parse(
          localStorage.getItem("add_products_cart")
        );
        let logic = false;
        console.log(logic);
        for (let i = 0; i < add_to_cart.length; i++) {
          if (cartId1 === add_to_cart[i].add_to_cart_id) {
            logic = true;
          }
        }

        if (!logic) {
          add_to_cart.push(add_food);
          localStorage.setItem(
            "add_products_cart",
            JSON.stringify(add_to_cart)
          );
        }
      }
    }
    window.location.href = "../../pages/add to cart/addtocart.html";
  });
});









// let before_30_minutes = moment().add({minutes:2}).format('YYYY-MM-DD hh:mm:ssA');
// // console.log(before_30_minutes);
// console.log(order[i]["before_30_minutes"] );
// // let m = moment().toString();
// let m = moment().format("YYYY-MM-DD hh:mm:ssA").toString();
// console.log(m)
// if(m >= order[i]["before_30_minutes"]){
//     // p_1.innerText=order[i]['delivery']['del_status1'];
//     p_1.innerText = order[i]['delivery']['del_status1'] ;
//     order[i]['delivery']['del_status'] = 'delivered'

//     // console.log(order[i]['time_check']);

// }else{
//     p_1.innerText=order[i]['delivery']['del_status']
//     console.log("rajini");
// };

// let  order1 = JSON.parse(localStorage.getItem('orders'));

