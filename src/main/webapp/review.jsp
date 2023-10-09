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
        <a href="" id="review_submit"> <button type="button" class="btn" id="submit">submit</button> </a>
      </form>
      </section>
    </section>
  
  </body>
<script>
  // Add an event listener to the textarea for input events
  const textarea = document.querySelector("#review");
  textarea.addEventListener("input", function () {
    // Get the current text length
    const currentLength = textarea.value.length;

    // Check if it exceeds the limit
    if (currentLength > 20) {
      // Trim the text to 30 characters
      textarea.value = textarea.value.slice(0, 20);
    }
  });
</script>
  <script>
  window.onpopstate = function(event) {
      // Reload the current page
      window.open(location.href, '_self');
  };

  
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
    

    const submit = document.getElementById("submit");
    submit.addEventListener("click", function () {
     
      const stars = JSON.parse(localStorage.getItem("star_value"));
      console.log(stars);
      const review_value = document.querySelector("#review").value;
      const reviewLink = document.getElementById("review_submit");
      if (review_value === "") {
        alert("enter the review");
      }
      else if (current_rating.innerText == "0") {
        alert("fill the stars");
      }
      else{
    	  const reviewLinkHref = '<%= request.getContextPath()%>/add_review?review_star=' + stars + '&review_message=' + review_value; // Add address_id here

          
    	  reviewLink.href = reviewLinkHref;
         
          alert('Order will be placed sucessfully');
    	  
      }
      
      window.onpopstate = function(event) {
    	    // Reload the current page when navigating back
    	    location.reload();
    	  };
      
      
     // window.location.href = `../../pages/My orders/myorders.html`;
    });
  
  </script>
</html>
