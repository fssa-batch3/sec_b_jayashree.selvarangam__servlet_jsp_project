<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../../assets/css/header.css">
    <link rel="stylesheet" href="../../assets/css/footer.css ">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <title>Expresso Cafe Blog</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
<link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
/* General Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

h1, h2, h3 {
  margin: 0;
}

ul {
  list-style: none;
  padding: 0;
}

/* Header */



/* Hero Section */
.hero {
  background-image: url("<%= request.getContextPath() %>/assets/image/icedgreen.jpg");
  background-size: cover;
  background-position: center;
  color: #fff;
  padding: 100px 20px;
  text-align: center;
}

.catchy-line {
  font-size: 24px;
}

/* Main Section */
main {
  margin: 20px;
  text-align: center;
}

.section-title {
  color: #333;
  margin-bottom: 20px;
}

.coffee-type {
  margin-bottom: 40px;
}

/* Footer */
footer {
  background-color: #333;
  color: #fff;
  padding: 20px;
  text-align: center;
}

/* Additional Styling */

/* Links */
a {
  color: #333;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

/* Coffee Preparation Methods */
.preparation-methods li {
  margin-bottom: 10px;
  color: #333;
}

/* Types of Coffee */
.coffee-type {
  display: inline-block;
  text-align: left;
  max-width: 400px;
  margin-bottom: 40px;
  padding: 20px;
  background-color: #f5f5f5;
  border-radius: 10px;
}

.coffee-type h3 {
  font-size: 20px;
  margin-bottom: 10px;
  color: #333;
}

.coffee-type p {
  margin-bottom: 10px;
  color: #666;
}

/* Allergens and Maximum Caffeine Intake */
.catchy-line {
  font-size: 20px;
  font-weight: bold;
  margin-top: 0;
  color: #333;
}
/* styles.css */

/* ... previous code ... */
.section123{
  
  padding: 2rem 8%;

}
/* Allergens and Maximum Caffeine Intake */
.section-title {
  text-align: center;
}

.catchy-line {
  text-align: center;
}

.section {
  text-align: center;
}

/* ... remaining code ... */

/* styles.css */

/* ... previous code ... */

/* The Goodness of Coffee */
.benefits {
  margin-top: 20px;
  margin-bottom: 40px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  background-color: #F7F7F7;
  padding: 20px;
  border-radius: 5px;
}

.benefits li {
  margin-bottom: 20px;
  width: 300px;
  text-align: left;
  color: #333;
}

/* Hot Packaging and Varieties */
.packaging {
  margin-bottom: 40px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  background-color: #F7F7F7;
  padding: 20px;
  border-radius: 5px;
}

.packaging li {
  margin-bottom: 20px;
  width: 300px;
  text-align: left;
  color: #333;
}

.packaging img {
  margin-bottom: 10px;
  max-width: 100%;
  height: auto;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

/* ... remaining code ... */


/* Images */
img {
  max-width: 100%;
  height: auto;
}

</style>
</head>

<body>
<jsp:include page="/header.jsp"></jsp:include>

  <section class="hero">
    <h2>Welcome to Expresso Cafe</h2>
    <p class="catchy-line">Indulge in the Art of Coffee</p>
  </section>

  <main>
    <section>
      <h2 class="section-title">Coffee Preparation Methods</h2>
      <p>Explore the different methods to prepare the perfect cup of coffee:</p>
      <ul class="preparation-methods">
        <li>Drip brewing</li>
        <li>French press</li>
        <li>Expresso</li>
        <li>AeroPress</li>
        <li>Cold brew</li>
      </ul>
    </section>

    <section >
      <h2 class="section-title">Types of Coffee</h2>
      <article class="coffee-type">
        <h3>1. Expresso</h3>
        <p>Experience the bold and intense flavors of Expresso, made by forcing hot water through finely ground coffee beans.
       
        </p>
      </article>

      <article class="coffee-type">
        <h3>2. Frappuccino</h3>
        <p>Indulge in the creamy and refreshing Frappuccino, a blended coffee beverage perfect for warm days.
         

        </p>
      </article>

      <article class="coffee-type">
        <h3>3. Cold Brew</h3>
        <p>Discover the smooth and rich flavors of cold brew coffee, brewed by steeping coffee grounds in cold water for an extended period.
         
        </p>
      </article>

      <article class="coffee-type">
        <h3>4. Brewed Coffee</h3>
        <p>Savor the classic and comforting taste of brewed coffee, made by pouring hot water over coffee grounds for a satisfying cup.
         
        </p>
      </article>

      <article class="coffee-type">
        <h3>5. Tea</h3>
        <p>For tea lovers, we also offer a delightful selection of teas to enjoy, ranging from herbal blends to exotic varieties.</p>
      </article>
    </section>

    <section >
      <h2 class="section-title">Amount of coffee powder required to make your fav coffee</h2>
      <article class="coffee-type">
        <h3>1. Expresso</h3>
        <p>
          Espresso: For a single shot of espresso (approximately 1 ounce or 30 milliliters), you would typically use around 7 grams of coffee powder. For a double shot (approximately 2 ounces or 60 milliliters), you would use around 14 grams of coffee powder.
        </p>
      </article>

      <article class="coffee-type">
        <h3>2. Frappuccino</h3>
        <p>
          Frappucino: A frappucino is made with espresso and equal parts steamed milk and foam. The amount of coffee powder used in the espresso portion would be the same as mentioned above for espresso.

        </p>
      </article>

      <article class="coffee-type">
        <h3>3. Cold Brew</h3>
        <p>
          Cold Brew: Cold brew coffee is made by steeping coffee grounds in cold water for an extended period, usually around 12 to 24 hours. The general ratio for cold brew is around 1 part coffee grounds to 4 parts water by weight. So, for a cup of cold brew, you could start with around 20 grams of coffee powder and 80 grams of water.
        </p>
      </article>

      <article class="coffee-type">
        <h3>4. Brewed Coffee</h3>
        <p>
          Brewed Coffee: The recommended ratio for brewing coffee is typically 1 to 2 tablespoons of coffee grounds per 6 ounces (177 milliliters) of water. This translates to approximately 10 grams of coffee powder for every 6 ounces (177 milliliters) of water. Adjust the amount according to your desired strength.
        </p>
      </article>

      <article class="coffee-type">
        <h3>5. Tea</h3>
        <p>For tea lovers, we also offer a delightful selection of teas to enjoy, ranging from herbal blends to exotic varieties.</p>
      </article>
    </section>

    <section class="section123">
      <h2 class="section-title">Allergens and Maximum Caffeine Intake</h2>
      <p class="catchy-line">Stay Informed, Stay Caffeinated</p>
      <p>It's important to be aware of allergens present in coffee-based beverages. Common allergens may include milk, soy, and nuts.</p>
      <p>Caffeine Sensitivity: While not an allergic reaction, some individuals may experience sensitivity or intolerance to caffeine, which is a naturally occurring stimulant found in coffee. Symptoms can include restlessness, irritability, rapid heartbeat, or digestive issues. It is important to note that caffeine sensitivity is different from a true allergy.</p>
      <p>Cross-Reactivity: Cross-reactivity can occur between certain proteins found in coffee and other substances, such as pollen or certain tree nuts. Individuals with known allergies to these substances may experience allergic reactions when consuming coffee due to the cross-reactivity. For example, if someone has a birch pollen allergy, they may also experience symptoms when consuming coffee, as there can be similar proteins present.</p>
      <p>Additionally, <b>
        it's recommended to limit your caffeine intake to a maximum of 400mg per day for adults.</b> This helps maintain a healthy balance and ensures a pleasant coffee experience.</p>
    </section>

    <section >
      <h2 class="section-title">The Goodness of Coffee</h2>
      <p>Discover the amazing benefits of coffee:</p>
      <ul class="benefits">
        <li>Rich in antioxidants</li>
        <li>Boosts energy and mental alertness</li>
        <li>Promotes fat burning and improved physical performance</li>
        <li>May lower the risk of certain diseases, such as Parkinson's and liver disease</li>
        <li>Enhances mood and reduces the risk of depression</li>
      </ul>
    </section>

    <section>
      <h2 class="section-title">Hot Packaging and Varieties</h2>
      <p>At Expresso Cafe, we take pride in our hot packaging and offer a variety of options:</p>
      <ul class="packaging">
        <li>Double-walled cups for heat insulation</li>
        <li>Eco-friendly and recyclable materials</li>
        <li>Secure lids to prevent spills</li>
        <li>Personalized cup designs to brighten your day</li>
      </ul>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Expresso Cafe. All rights reserved.</p>
  </footer>
</body>
<script src="../../pages/order/header.js"></script>

</html>