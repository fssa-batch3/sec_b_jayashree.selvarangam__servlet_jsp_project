<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>coffee shop</title>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />

    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/review.css " />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css" />
    <link rel="stylesheet" href="../../assets/css/footer.css " />
    <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
        </style>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      /* body{
            height:flex;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;

            /* background: linear-gradient(45deg,purple,blue); */
      /* } */

      .star {
        font-size: 3rem;
        color: #ff9800;
        background-color: unset;
        border: none;
      }

      .rating_heading {
        color: teal;
       
        animation: scale-up 1s ease;
      }
      .rating_heading span{
        font-size: 1.4rem;
        font-weight: bold;
      }
      .star_rating {
    user-select: none;
    background-color: teal;
    padding: 0.9rem 1rem;
    margin: 2rem;
    border-radius: 0.4rem;
    text-align: center;
    animation: slide-up 1s ease;
}

      .star:hover {
        cursor: pointer;
      }

      .current_rating {
        color: #ff9800;
      }

      @keyframes slide-up {
        0% {
          opacity: 0;
          transform: translateY(50px);
        }

        100% {
          opacity: 1;
          transform: translateY(0px);
        }
      }
    </style>
  </head>

  <body>
    <!-- header section starts  -->
    <!-- <header class="header">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <a href="../../index.html" class="logo"> Coffee <i class="fas fa-mug-hot"></i> </a>

            <nav class="navbar">
            <a href="../../index.html">Home</a>
            <a href="../../pages/order/order-bestseller.html">Order</a>
            <a href="../../pages/payment/payment.html">Pay</a>
            <a href="../../pages/My orders/myorders.html">My orders</a>
            <a href="../../pages/blogs/blog.html">Blogs</a>
            </nav>
            <div class="icons">
            <a href="../../pages/add to cart/addtocart.html" class="fas fa-shopping-cart"></a>
            <a href="../../pages/profile/profile.html" class="fas fa-user"></a>
            </div>
            <a href="../../pages/login/login.html" class="btn">Login</a>

            </header> -->

    <section class="profile" id="profile">
      <section class="form">
        <form>
        <h1 class="rating_heading"><span>Rating</span> </h1>

        <div class="star_rating">
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <p class="current_rating">0</p>
        </div>

        <textarea
          placeholder="Write your valuable feedback here"
          title="Use only lowercase(abc...z)"
          pattern="[a-z]{3,}"
          class="box"
          id="review"
         
          required="true"
        ></textarea>
        <!-- <button class="btn"><a href="../../index.html">Submit</a> </button>  -->
        <button type="button" class="btn" id="submit">submit</button>
      </form>
      </section>
    </section>
  
  </body>
  <script src="../../pages/order/header.js"></script>
  <script>
    const queryString = window.location.search;
    // console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    console.log(urlParams);
    const product = urlParams.get("order_id");
    console.log(product);

    const queryString1 = window.location.search;
    // console.log(queryString);
    const urlParams1 = new URLSearchParams(queryString);
    console.log(urlParams);
    const product1 = urlParams.get("product_id");
    console.log(product1);

    const queryString2 = window.location.search;
    // console.log(queryString);
    // const urlParams2 = new URLSearchParams(queryString);
    // console.log(urlParams);
    // const product2 = urlParams.get("order_id");
    // console.log(product1);

    localStorage.setItem("star_value", JSON.stringify("0"));
    const allStars = document.querySelectorAll(".star");
    const current_rating = document.querySelector(".current_rating");
    // console.log(allStars)
    allStars.forEach((star, i) => {
      star.onclick = function () {
        // console.log(i+1)
        const current_star_level = i + 1;
        current_rating.innerText = current_star_level;
        localStorage.setItem(
          "star_value",
          JSON.stringify(current_rating.innerText)
        );
        allStars.forEach((star, j) => {
          if (current_star_level >= j + 1) {
            //   console.log(j+1)
            star.innerHTML = "&#9733";
          } else {
            star.innerHTML = "&#9734";
          }
        });
      };
    });
    console.log(1);
    const user_id_array = JSON.parse(localStorage.getItem("unique_id"));
    console.log(user_id_array);
    const user_list = JSON.parse(localStorage.getItem("user_list"));
    console.log(user_list);
    // let user_id = user_list.find(e=>{
    //     e.user_email === user_id_array ;
    // });
    function find_id(e) {
      return e.user_email === user_id_array;
    }
    const user_id = user_list.find(find_id);
    console.log(user_id);

    const submit = document.getElementById("submit");
    submit.addEventListener("click", function () {
      const stars = JSON.parse(localStorage.getItem("stars"));
      const review_value = document.querySelector("#review").value;
      if (review_value === "") {
        alert("enter the review");
      }
      const current_rating_from_LS = JSON.parse(
        localStorage.getItem("star_value")
      );
      //   console.log(current_rating.innerText);
      //    if()
      if (current_rating.innerText !== "0") {
        if (stars === null) {
          const store_review = [
            {
              no_of_stars: parseInt(current_rating.innerText),
              review: review_value,
              user_name: user_id.user_name,
              order_id: product,
              product_id: product1,
              user_id:user_id_array
            }
          ];
          localStorage.setItem("stars", JSON.stringify(store_review));
        } else {
          const stars1 = JSON.parse(localStorage.getItem("stars"));
          stars1.push({
            no_of_stars: parseInt(current_rating.innerText),
            review: review_value,
            user_name: user_id.user_name,
            order_id: product,
            product_id: product1
          });
          localStorage.setItem("stars", JSON.stringify(stars1));
        }
      } else {
        alert("fill the stars");
      }
      const myOrder = JSON.parse(localStorage.getItem("orders"));
      function findProduct(type) {
        return type.order_id === product;
      }
      const myOrderObject = myOrder.find(findProduct);
      console.log(myOrderObject);
      //   myOrderObject.map((object) => Object.assign(object, {
      //     review:true,
      //    }));
      if (myOrderObject) {
        myOrderObject.review = true;
      }
      localStorage.setItem("orders", JSON.stringify(myOrder));
      
      window.location.href = `../../pages/My orders/myorders.html`;
    });
  
  </script>
</html>
