```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Premium Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================
   GLOBAL
========================= */

:root {
    --primary: #111827;
    --secondary: #6366f1;
    --secondary-dark: #4f46e5;
    --accent: #06b6d4;
    --pink: #ec4899;
    --success: #22c55e;
    --danger: #ef4444;
    --bg: #f8fafc;
    --white: #ffffff;
    --text: #111827;
    --muted: #64748b;
    --border: #e5e7eb;
    --radius: 20px;
    --container: 1200px;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Inter, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
}

a {
    text-decoration: none;
    color: inherit;
}

button,
input {
    font-family: inherit;
}

.container {
    width: min(1200px, calc(100% - 40px));
    margin: auto;
}

/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: rgba(255,255,255,.88);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(0,0,0,.06);
}

.header-inner {
    min-height: 78px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.brand {
    font-family: Poppins, sans-serif;
    font-size: 25px;
    font-weight: 800;
    letter-spacing: -1px;
}

.brand span {
    color: var(--secondary);
}

.main-nav ul {
    display: flex;
    list-style: none;
    gap: 8px;
}

.main-nav a {
    display: flex;
    align-items: center;
    gap: 7px;
    padding: 10px 14px;
    border-radius: 10px;
    font-weight: 600;
    color: #475569;
    transition: .25s;
}

.main-nav a:hover {
    color: var(--secondary);
    background: #eef2ff;
}

.header-right {
    display: flex;
    align-items: center;
    gap: 14px;
}

.search {
    width: 250px;
    height: 42px;
    display: flex;
    align-items: center;
    gap: 10px;
    background: #f1f5f9;
    border: 1px solid transparent;
    padding: 0 14px;
    border-radius: 50px;
    transition: .25s;
}

.search:focus-within {
    background: white;
    border-color: var(--secondary);
    box-shadow: 0 0 0 4px rgba(99,102,241,.1);
}

.search input {
    width: 100%;
    border: 0;
    outline: 0;
    background: transparent;
}

.icon-btn {
    width: 40px;
    height: 40px;
    border: 0;
    background: transparent;
    border-radius: 50%;
    cursor: pointer;
    font-size: 17px;
    color: #475569;
    transition: .25s;
}

.icon-btn:hover {
    background: #eef2ff;
    color: var(--secondary);
}

.cart {
    position: relative;
}

.cart-count {
    position: absolute;
    top: -4px;
    right: -5px;
    width: 19px;
    height: 19px;
    display: grid;
    place-items: center;
    background: var(--pink);
    color: white;
    border-radius: 50%;
    font-size: 10px;
    font-weight: 800;
}

.mobile-toggle {
    display: none;
    border: 0;
    background: transparent;
    font-size: 22px;
}

/* =========================
   HERO
========================= */

.hero {
    position: relative;
    min-height: 570px;
    display: flex;
    align-items: center;
    overflow: hidden;
    background:
        linear-gradient(
            110deg,
            rgba(15,23,42,.96),
            rgba(79,70,229,.80),
            rgba(6,182,212,.55)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
        center/cover;
}

.hero-content {
    max-width: 720px;
    color: white;
}

.hero-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 8px 14px;
    background: rgba(255,255,255,.13);
    border: 1px solid rgba(255,255,255,.2);
    border-radius: 50px;
    margin-bottom: 20px;
    font-size: 13px;
    font-weight: 700;
}

.hero h1 {
    font-family: Poppins, sans-serif;
    font-size: clamp(42px, 6vw, 70px);
    line-height: 1.05;
    letter-spacing: -3px;
    margin-bottom: 22px;
}

.hero h1 span {
    color: #67e8f9;
}

.hero p {
    max-width: 650px;
    color: rgba(255,255,255,.85);
    font-size: 17px;
    margin-bottom: 30px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    border: 0;
    padding: 13px 22px;
    border-radius: 50px;
    cursor: pointer;
    font-weight: 700;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;
    transition: .25s;
}

.btn-primary {
    background: white;
    color: var(--secondary-dark);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 30px rgba(0,0,0,.2);
}

.btn-outline {
    color: white;
    border: 1px solid rgba(255,255,255,.35);
    background: rgba(255,255,255,.08);
}

.btn-outline:hover {
    background: rgba(255,255,255,.16);
}

/* =========================
   SECTION
========================= */

.section {
    padding: 75px 0;
}

.section-header {
    display: flex;
    align-items: end;
    justify-content: space-between;
    margin-bottom: 30px;
}

.section-title h2 {
    font-family: Poppins, sans-serif;
    font-size: 30px;
    letter-spacing: -1px;
}

.section-title p {
    color: var(--muted);
    margin-top: 5px;
}

.view-all {
    color: var(--secondary);
    font-weight: 700;
}

/* =========================
   CATEGORIES
========================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 16px;
}

.cat-card {
    background: white;
    padding: 25px 15px;
    text-align: center;
    border-radius: var(--radius);
    border: 1px solid var(--border);
    cursor: pointer;
    transition: .3s;
}

.cat-card:hover {
    transform: translateY(-8px);
    border-color: #c7d2fe;
    box-shadow: 0 20px 40px rgba(15,23,42,.08);
}

.cat-icon {
    width: 60px;
    height: 60px;
    margin: auto;
    display: grid;
    place-items: center;
    border-radius: 18px;
    background: linear-gradient(135deg,#eef2ff,#ecfeff);
    color: var(--secondary);
    font-size: 25px;
}

.cat-card h4 {
    margin-top: 14px;
    font-size: 14px;
}

.cat-card p {
    color: var(--muted);
    font-size: 11px;
    margin-top: 4px;
}

/* =========================
   PRODUCTS
========================= */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 22px;
}

.product {
    position: relative;
    background: white;
    border-radius: var(--radius);
    overflow: hidden;
    border: 1px solid var(--border);
    transition: .3s;
}

.product:hover {
    transform: translateY(-7px);
    box-shadow: 0 25px 45px rgba(15,23,42,.1);
}

.product-image {
    height: 245px;
    position: relative;
    overflow: hidden;
    background: #f1f5f9;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.07);
}

.badge {
    position: absolute;
    top: 14px;
    left: 14px;
    padding: 6px 10px;
    border-radius: 8px;
    background: var(--secondary);
    color: white;
    font-size: 11px;
    font-weight: 800;
    z-index: 2;
}

.badge.sale {
    background: var(--pink);
}

.wishlist {
    position: absolute;
    right: 14px;
    top: 14px;
    width: 38px;
    height: 38px;
    border: 0;
    border-radius: 50%;
    background: white;
    box-shadow: 0 5px 15px rgba(0,0,0,.08);
    cursor: pointer;
    z-index: 3;
}

.wishlist:hover {
    color: var(--pink);
}

.product-body {
    padding: 18px;
}

.product-category {
    color: var(--muted);
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: 700;
}

.product h3 {
    font-size: 16px;
    margin: 5px 0 12px;
}

.rating {
    color: #f59e0b;
    font-size: 13px;
}

.rating span {
    color: var(--muted);
    margin-left: 4px;
}

.price-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
}

.price {
    font-size: 20px;
    font-weight: 800;
}

.old-price {
    color: #94a3b8;
    text-decoration: line-through;
    font-size: 12px;
    margin-left: 5px;
}

.add-btn {
    width: 100%;
    margin-top: 15px;
    border: 0;
    padding: 11px;
    border-radius: 12px;
    background: #111827;
    color: white;
    cursor: pointer;
    font-weight: 700;
    transition: .25s;
}

.add-btn:hover {
    background: var(--secondary);
}

/* =========================
   FLASH SALE
========================= */

.deal {
    display: grid;
    grid-template-columns: 1fr 1fr;
    background: linear-gradient(135deg,#111827,#312e81);
    border-radius: 28px;
    overflow: hidden;
    color: white;
}

.deal-image {
    min-height: 380px;
}

.deal-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.deal-content {
    padding: 50px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.sale-label {
    color: #67e8f9;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 12px;
    font-weight: 800;
}

.deal h2 {
    font-family: Poppins;
    font-size: 38px;
    margin: 10px 0;
}

.deal p {
    color: #cbd5e1;
}

.timer {
    display: flex;
    gap: 10px;
    margin: 25px 0;
}

.time-box {
    min-width: 65px;
    padding: 12px;
    background: rgba(255,255,255,.1);
    border: 1px solid rgba(255,255,255,.12);
    border-radius: 12px;
    text-align: center;
}

.time-box strong {
    display: block;
    font-size: 21px;
}

.time-box small {
    color: #cbd5e1;
}

/* =========================
   TESTIMONIALS
========================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 20px;
}

.testimonial {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 25px;
}

.testimonial .stars {
    color: #f59e0b;
    margin-bottom: 12px;
}

.testimonial p {
    color: #475569;
    font-size: 14px;
}

.customer {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-top: 20px;
}

.customer img {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    object-fit: cover;
}

.customer strong {
    display: block;
    font-size: 13px;
}

.customer small {
    color: var(--muted);
}

/* =========================
   NEWSLETTER
========================= */

.newsletter {
    background:
        linear-gradient(135deg,#4f46e5,#06b6d4);
    border-radius: 28px;
    padding: 55px 30px;
    text-align: center;
    color: white;
}

.newsletter h2 {
    font-family: Poppins;
    font-size: 32px;
}

.newsletter p {
    opacity: .85;
    margin: 8px 0 25px;
}

.newsletter-form {
    max-width: 500px;
    margin: auto;
    display: flex;
    background: white;
    padding: 5px;
    border-radius: 50px;
}

.newsletter-form input {
    flex: 1;
    border: 0;
    outline: 0;
    padding: 12px 18px;
    border-radius: 50px;
}

.newsletter-form button {
    background: #111827;
    color: white;
    border: 0;
    border-radius: 50px;
    padding: 12px 20px;
    font-weight: 700;
    cursor: pointer;
}

/* =========================
   FOOTER
========================= */

footer {
    background: #0f172a;
    color: #cbd5e1;
    padding: 60px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer-brand {
    color: white;
    font-family: Poppins;
    font-size: 24px;
    font-weight: 800;
}

.footer-brand span {
    color: #67e8f9;
}

footer h4 {
    color: white;
    margin-bottom: 15px;
}

footer ul {
    list-style: none;
}

footer li {
    margin: 9px 0;
    font-size: 13px;
}

footer a:hover {
    color: #67e8f9;
}

.social {
    display: flex;
    gap: 10px;
    margin-top: 20px;
}

.social a {
    width: 38px;
    height: 38px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    background: rgba(255,255,255,.08);
}

.copyright {
    text-align: center;
    border-top: 1px solid rgba(255,255,255,.08);
    margin-top: 45px;
    padding-top: 20px;
    font-size: 12px;
    color: #94a3b8;
}

/* =========================
   MOBILE
========================= */

@media(max-width:1000px) {

    .main-nav {
        display: none;
    }

    .mobile-toggle {
        display: block;
    }

    .header-inner {
        justify-content: flex-start;
    }

    .header-right {
        margin-left: auto;
    }

    .search {
        width: 200px;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }
}

@media(max-width:650px) {

    .container {
        width: min(100% - 24px,1200px);
    }

    .header-inner {
        min-height: 65px;
    }

    .brand {
        font-size: 21px;
    }

    .search {
        display: none;
    }

    .hero {
        min-height: 520px;
    }

    .hero h1 {
        font-size: 42px;
        letter-spacing: -2px;
    }

    .hero p {
        font-size: 14px;
    }

    .section {
        padding: 50px 0;
    }

    .section-header {
        display: block;
    }

    .view-all {
        display: inline-block;
        margin-top: 10px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: 1fr;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 250px;
    }

    .deal-content {
        padding: 30px;
    }

    .deal h2 {
        font-size: 30px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .newsletter-form {
        flex-direction: column;
        background: transparent;
        gap: 8px;
    }

    .newsletter-form input {
        width: 100%;
        background: white;
    }

    .newsletter-form button {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="container header-inner">

<button class="mobile-toggle" id="mobileToggle">
    <i class="fas fa-bars"></i>
</button>

<a href="#" class="brand">
    Nexus<span>Shop</span>
</a>

<nav class="main-nav">
<ul>
    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
    <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    <li><a href="#about"><i class="fas fa-circle-info"></i> About</a></li>
</ul>
</nav>

<div class="header-right">

<div class="search">
    <i class="fas fa-search"></i>
    <input
        type="search"
        id="searchInput"
        placeholder="Search products..."
    >
</div>

<button class="icon-btn">
    <i class="far fa-user"></i>
</button>

<button class="icon-btn">
    <i class="far fa-heart"></i>
</button>

<button class="icon-btn cart" id="cartBtn">
    <i class="fas fa-shopping-bag"></i>
    <span class="cart-count" id="cartCount">0</span>
</button>

</div>

</div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

<div class="container">

<div class="hero-content">

<div class="hero-badge">
    <i class="fas fa-sparkles"></i>
    New Collection 2026
</div>

<h1>
    Shop Smarter.<br>
    Live <span>Better.</span>
</h1>

<p>
Discover premium products, trending technology,
fashion essentials and exclusive deals — all in one place.
</p>

<div class="hero-buttons">

<button class="btn btn-primary" id="shopNow">
    Shop Now
    <i class="fas fa-arrow-right"></i>
</button>

<button class="btn btn-outline" id="exploreDeals">
    Explore Deals
</button>

</div>

</div>

</div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section" id="categories">

<div class="container">

<div class="section-header">

<div class="section-title">
<h2>Shop by Category</h2>
<p>Everything you need, beautifully organized.</p>
</div>

<a href="#products" class="view-all">
View All →
</a>

</div>

<div class="categories" id="categoriesGrid"></div>

</div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">

<div class="container">

<div class="section-header">

<div class="section-title">
<h2>Trending Products</h2>
<p>Popular products customers love right now.</p>
</div>

</div>

<div class="products" id="productsGrid"></div>

</div>

</section>


<!-- ================= DEAL ================= -->

<section class="section" id="deals">

<div class="container">

<div class="deal">

<div class="deal-image">

<img
src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
alt="MacBook Air"
>

</div>

<div class="deal-content">

<div class="sale-label">
Limited Time Offer
</div>

<h2>MacBook Air M2</h2>

<p>
Thin, light and incredibly powerful.
Get premium performance at an exclusive price.
</p>

<div class="timer">

<div class="time-box">
<strong id="dealDays">0</strong>
<small>Days</small>
</div>

<div class="time-box">
<strong id="dealHours">00</strong>
<small>Hours</small>
</div>

<div class="time-box">
<strong id="dealMinutes">00</strong>
<small>Minutes</small>
</div>

<div class="time-box">
<strong id="dealSeconds">00</strong>
<small>Seconds</small>
</div>

</div>

<div>
<strong style="font-size:30px">$999</strong>
<span style="text-decoration:line-through;color:#94a3b8;margin-left:8px">
$1,199
</span>
</div>

<button
class="btn btn-primary"
id="buyDeal"
style="margin-top:22px;width:max-content"
>
Buy Now
</button>

</div>

</div>

</div>

</section>


<!-- ================= TESTIMONIALS ================= -->

<section class="section">

<div class="container">

<div class="section-header">

<div class="section-title">
<h2>What Customers Say</h2>
<p>Real experiences from our customers.</p>
</div>

</div>

<div class="testimonials">

<div class="testimonial">

<div class="stars">★★★★★</div>

<p>
"Fast shipping and excellent customer support.
The product exceeded my expectations!"
</p>

<div class="customer">

<img
src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
alt="Ava"
>

<div>
<strong>Ava Martin</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>


<div class="testimonial">

<div class="stars">★★★★★</div>

<p>
"Great selection and the checkout was incredibly
smooth. I'll definitely shop here again."
</p>

<div class="customer">

<img
src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
alt="Michael"
>

<div>
<strong>Michael Lee</strong>
<small>Frequent Buyer</small>
</div>

</div>

</div>


<div class="testimonial">

<div class="stars">★★★★★</div>

<p>
"Beautiful website, great products and very fast
delivery. Highly recommended!"
</p>

<div class="customer">

<img
src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
alt="Sophia"
>

<div>
<strong>Sophia Williams</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

</div>

</div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="section">

<div class="container">

<div class="newsletter">

<h2>Stay in the Loop</h2>

<p>
Get exclusive offers, new arrivals and special discounts.
</p>

<form class="newsletter-form" id="newsletterForm">

<input
type="email"
id="newsletterEmail"
placeholder="Enter your email address"
required
>

<button type="submit">
Subscribe
</button>

</form>

<div id="newsletterMsg" style="margin-top:12px"></div>

</div>

</div>

</section>


<!-- ================= FOOTER ================= -->

<footer id="about">

<div class="container">

<div class="footer-grid">

<div>

<div class="footer-brand">
Nexus<span>Shop</span>
</div>

<p style="margin-top:12px;font-size:13px;max-width:330px">
A modern e-commerce experience built for
shopping smarter and living better.
</p>

<div class="social">

<a href="#">
<i class="fab fa-facebook-f"></i>
</a>

<a href="#">
<i class="fab fa-instagram"></i>
</a>

<a href="#">
<i class="fab fa-twitter"></i>
</a>

<a href="#">
<i class="fab fa-linkedin-in"></i>
</a>

</div>

</div>


<div>

<h4>Company</h4>

<ul>
<li><a href="#">About Us</a></li>
<li><a href="#">Careers</a></li>
<li><a href="#">Press</a></li>
<li><a href="#">Blog</a></li>
</ul>

</div>


<div>

<h4>Support</h4>

<ul>
<li><a href="#">Help Center</a></li>
<li><a href="#">Shipping</a></li>
<li><a href="#">Returns</a></li>
<li><a href="#">Contact</a></li>
</ul>

</div>


<div>

<h4>Account</h4>

<ul>
<li><a href="#">My Account</a></li>
<li><a href="#">Orders</a></li>
<li><a href="#">Wishlist</a></li>
<li><a href="#">Cart</a></li>
</ul>

</div>

</div>


<div class="copyright">

© <span id="year"></span> NexusShop.
All rights reserved.

</div>

</div>

</footer>


<script>

/* =========================
   DATA
========================= */

const CATEGORIES = [

{
id: "phones",
name: "Smartphones",
icon: "fa-mobile-screen"
},

{
id: "laptops",
name: "Laptops",
icon: "fa-laptop"
},

{
id: "clothing",
name: "Clothing",
icon: "fa-shirt"
},

{
id: "gadgets",
name: "Gadgets",
icon: "fa-headphones"
},

{
id: "footwear",
name: "Footwear",
icon: "fa-shoe-prints"
},

{
id: "accessories",
name: "Accessories",
icon: "fa-watch"
}

];


const PRODUCTS = [

{
id: 1,
title: "iPhone 14 Pro Max",
price: 1099,
oldPrice: 1199,
rating: 5,
reviews: 128,
badge: "New",
category: "phones",
img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

{
id: 2,
title: 'MacBook Pro 14"',
price: 1999,
rating: 4,
reviews: 86,
category: "laptops",
img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

{
id: 3,
title: "Apple Watch Series 8",
price: 349,
oldPrice: 399,
rating: 5,
reviews: 214,
badge: "-25%",
category: "accessories",
img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"
},

{
id: 4,
title: "Nike Air Max 270",
price: 150,
rating: 4,
reviews: 53,
category: "footwear",
img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85"
},

{
id: 5,
title: "Sony A7 IV Camera",
price: 2499,
rating: 5,
reviews: 42,
category: "gadgets",
img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
},

{
id: 6,
title: "Chanel No. 5",
price: 120,
rating: 5,
reviews: 189,
category: "accessories",
img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
},

{
id: 7,
title: "Travel Backpack",
price: 79,
oldPrice: 99,
rating: 4,
reviews: 67,
category: "accessories",
img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85"
},

{
id: 8,
title: "Sony WH-1000XM5",
price: 399,
rating: 5,
reviews: 156,
category: "gadgets",
img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85"
}

];


/* =========================
   ELEMENTS
========================= */

const categoriesGrid =
document.getElementById("categoriesGrid");

const productsGrid =
document.getElementById("productsGrid");

const searchInput =
document.getElementById("searchInput");

const cartCount =
document.getElementById("cartCount");

let cart = 0;


/* =========================
   CATEGORIES
========================= */

function renderCategories() {

categoriesGrid.innerHTML = "";

CATEGORIES.forEach(category => {

const card = document.createElement("div");

card.className = "cat-card";

card.innerHTML = `

<div class="cat-icon">
<i class="fas ${category.icon}"></i>
</div>

<h4>${category.name}</h4>

<p>Explore ${category.name}</p>

`;

card.addEventListener("click", () => {

searchInput.value = category.name;

filterProducts(category.name);

document
.getElementById("products")
.scrollIntoView({
behavior: "smooth"
});

});

categoriesGrid.appendChild(card);

});

}


/* =========================
   PRODUCTS
========================= */

function renderProducts(products) {

productsGrid.innerHTML = "";

if(products.length === 0) {

productsGrid.innerHTML = `

<div style="
grid-column:1/-1;
text-align:center;
padding:60px;
color:#64748b
">

<i
class="fas fa-box-open"
style="font-size:40px;margin-bottom:15px"
></i>

<h3>No products found</h3>

<p>Try another search.</p>

</div>

`;

return;

}


products.forEach(product => {

const card = document.createElement("article");

card.className = "product";

card.innerHTML = `

<div class="product-image">

${product.badge ? `

<div class="badge ${product.badge.startsWith("-") ? "sale" : ""}">
${product.badge}
</div>

` : ""}

<button class="wishlist">
<i class="far fa-heart"></i>
</button>

<img
src="${product.img}"
alt="${product.title}"
>

</div>


<div class="product-body">

<div class="product-category">
${product.category}
</div>

<h3>${product.title}</h3>

<div class="rating">

${"★".repeat(product.rating)}

<span>(${product.reviews})</span>

</div>


<div class="price-row">

<div>

<span class="price">
$${product.price.toLocaleString()}
</span>

${product.oldPrice ? `

<span class="old-price">
$${product.oldPrice.toLocaleString()}
</span>

` : ""}

</div>

</div>


<button
class="add-btn"
data-id="${product.id}"
>

<i class="fas fa-cart-plus"></i>
Add to Cart

</button>

</div>

`;

productsGrid.appendChild(card);

});


document
.querySelectorAll(".add-btn")
.forEach(button => {

button.addEventListener("click", () => {

const productId =
Number(button.dataset.id);

addToCart(productId);

});

});


document
.querySelectorAll(".wishlist")
.forEach(button => {

button.addEventListener("click", () => {

const icon =
button.querySelector("i");

icon.classList.toggle("far");
icon.classList.toggle("fas");

button.style.color =
icon.classList.contains("fas")
? "#ec4899"
: "";

});

});

}


/* =========================
   CART
========================= */

function addToCart(id) {

const product =
PRODUCTS.find(item => item.id === id);

if(!product) return;

cart++;

cartCount.textContent = cart;

const button =
document.querySelector(
`.add-btn[data-id="${id}"]`
);

if(button) {

const original = button.innerHTML;

button.innerHTML =
'<i class="fas fa-check"></i> Added';

button.style.background = "#22c55e";

setTimeout(() => {

button.innerHTML = original;
button.style.background = "";

},1200);

}

}


/* =========================
   SEARCH
========================= */

function filterProducts(query) {

const q =
query.trim().toLowerCase();

if(!q) {

renderProducts(PRODUCTS);

return;

}

const filtered =
PRODUCTS.filter(product =>

product.title
.toLowerCase()
.includes(q)

||

product.category
.toLowerCase()
.includes(q)

);

renderProducts(filtered);

}


searchInput.addEventListener(
"input",
e => filterProducts(e.target.value)
);


/* =========================
   SHOP NOW
========================= */

document
.getElementById("shopNow")
.addEventListener("click", () => {

document
.getElementById("products")
.scrollIntoView({
behavior: "smooth"
});

});


/* =========================
   DEAL
========================= */

document
.getElementById("exploreDeals")
.addEventListener("click", () => {

document
.getElementById("deals")
.scrollIntoView({
behavior: "smooth"
});

});


document
.getElementById("buyDeal")
.addEventListener("click", () => {

cart++;

cartCount.textContent = cart;

alert("MacBook Air M2 added to cart!");

});


/* =========================
   COUNTDOWN
========================= */

const target =
new Date(
Date.now() + 24 * 60 * 60 * 1000
);


function updateTimer() {

const diff =
target - new Date();

if(diff <= 0) return;

const days =
Math.floor(
diff / (1000 * 60 * 60 * 24)
);

const hours =
Math.floor(
(diff / (1000 * 60 * 60)) % 24
);

const minutes =
Math.floor(
(diff / (1000 * 60)) % 60
);

const seconds =
Math.floor(
(diff / 1000) % 60
);


document.getElementById("dealDays")
.textContent = days;

document.getElementById("dealHours")
.textContent =
String(hours).padStart(2,"0");

document.getElementById("dealMinutes")
.textContent =
String(minutes).padStart(2,"0");

document.getElementById("dealSeconds")
.textContent =
String(seconds).padStart(2,"0");

}

updateTimer();

setInterval(updateTimer,1000);


/* =========================
   NEWSLETTER
========================= */

document
.getElementById("newsletterForm")
.addEventListener("submit", e => {

e.preventDefault();

const email =
document
.getElementById("newsletterEmail")
.value.trim();

const message =
document.getElementById("newsletterMsg");

if(!email.includes("@")) {

message.textContent =
"Please enter a valid email address.";

return;

}

message.textContent =
"✓ Thanks! You are subscribed.";

document
.getElementById("newsletterEmail")
.value = "";

});


/* =========================
   MOBILE MENU
========================= */

document
.getElementById("mobileToggle")
.addEventListener("click", () => {

const nav =
document.querySelector(".main-nav");

if(nav.style.display === "block") {

nav.style.display = "none";

} else {

nav.style.display = "block";

nav.style.position = "absolute";
nav.style.top = "65px";
nav.style.left = "0";
nav.style.right = "0";
nav.style.background = "white";
nav.style.padding = "15px 20px";
nav.style.boxShadow =
"0 15px 30px rgba(0,0,0,.08)";

}

});


/* =========================
   INITIALIZE
========================= */

renderCategories();

renderProducts(PRODUCTS);

document.getElementById("year")
.textContent =
new Date().getFullYear();

</script>

</body>
</html>
```
