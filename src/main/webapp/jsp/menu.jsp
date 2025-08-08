<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>Our Menu - Yummy Bootstrap Template</title>
  <meta name="description" content="Our delicious food menu for Yummy Bootstrap Template" />
  <meta name="keywords" content="menu, food, dishes, yummy, restaurant, bootstrap" />

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon" />
  <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect" />
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
  <link
          href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Amatic+SC:wght@400;700&display=swap"
          rel="stylesheet" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

  <style>
    :root {
      --primary-color: #ce1212;
      --secondary-color: #37373f;
      --text-color: #7f7f90;
      --heading-font: 'Amatic SC', cursive;
      --body-font: 'Inter', sans-serif;
    }

    body {
      font-family: var(--body-font);
      color: var(--text-color);
      background-color: #f8f9fa; /* Light background for the body */
    }

    h1, h2, h3, h4, h5, h6 {
      font-family: var(--heading-font);
      color: var(--secondary-color);
    }

    .section-title {
      text-align: center;
      padding-bottom: 60px;
    }

    .section-title h2 {
      font-size: 14px;
      font-weight: 500;
      padding: 0;
      line-height: 1px;
      margin: 0 0 5px 0;
      letter-spacing: 2px;
      text-transform: uppercase;
      color: #aaaaaa;
    }

    .section-title h2 span {
      color: var(--primary-color);
    }

    .section-title p {
      margin: 0;
      font-size: 48px;
      font-weight: 700;
      font-family: var(--heading-font);
      color: var(--secondary-color);
    }

    /* Header Styling */
    .header {
      transition: all 0.3s ease-in-out;
      padding: 20px 0;
      background-color: #fff !important;
    }

    .header .logo h1 {
      color: var(--secondary-color);
    }

    .header .logo h1 span {
      color: var(--primary-color);
    }

    .header .nav-link {
      padding: 10px 15px;
      font-weight: 600;
      color: var(--secondary-color);
      transition: color 0.3s ease;
    }

    .header .nav-link:hover,
    .header .nav-link.active {
      color: var(--primary-color) !important;
    }

    .header .btn-primary {
      background-color: var(--primary-color);
      border-color: var(--primary-color);
      padding: 8px 25px;
      border-radius: 50px; /* More rounded button */
      transition: background-color 0.3s ease, border-color 0.3s ease;
    }

    .header .btn-primary:hover {
      background-color: #e62f2f;
      border-color: #e62f2f;
    }

    /* Menu Section */
    .menu-section {
      padding: 80px 0;
      background-color: #f8f9fa;
    }

    .menu-filters {
      text-align: center;
      margin-bottom: 40px;
    }

    .menu-filters ul {
      list-style: none;
      padding: 0;
      margin: 0;
      display: inline-block; /* For centering */
      border: 1px solid #ccc;
      border-radius: 50px;
    }

    .menu-filters li {
      display: inline-block;
      margin: 0 5px;
    }

    .menu-filters a {
      display: block;
      padding: 10px 20px;
      border-radius: 50px;
      color: var(--secondary-color);
      font-weight: 600;
      text-decoration: none;
      transition: all 0.3s ease;
    }

    .menu-filters a.active,
    .menu-filters a:hover {
      background-color: var(--primary-color);
      color: #fff;
    }

    .menu-item {
      background-color: #fff;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
      padding: 25px;
      transition: all 0.3s ease;
      height: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      margin-bottom: 30px; /* Spacing between items */
    }

    .menu-item:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .menu-item img {
      max-width: 100%;
      border-radius: 8px;
      margin-bottom: 20px;
      height: 200px; /* Fixed height for consistency */
      object-fit: cover; /* Ensures images cover the area without distortion */
    }

    .menu-item h4 {
      font-size: 24px;
      font-weight: 700;
      color: var(--primary-color);
      margin-bottom: 10px;
    }

    .menu-item p {
      font-size: 16px;
      color: var(--text-color);
      flex-grow: 1; /* Allows description to take available space */
    }

    .menu-item .price {
      font-size: 28px;
      font-weight: 700;
      color: var(--secondary-color);
      margin-top: 15px;
    }

    /* Footer Styling */
    .footer {
      background-color: var(--secondary-color) !important;
      color: #fff !important;
      padding-top: 60px;
      padding-bottom: 30px;
    }

    .footer .icon {
      color: var(--primary-color);
    }

    .footer h4 {
      color: #fff;
      font-size: 18px;
      font-weight: 700;
      margin-bottom: 15px;
    }

    .footer p {
      color: #fff;
      font-size: 15px;
      line-height: 24px;
    }

    .footer .social-links a {
      color: #fff;
      transition: color 0.3s ease;
    }

    .footer .social-links a:hover {
      color: var(--primary-color);
    }

    .footer .credits a {
      color: var(--primary-color);
      font-weight: 600;
    }

    .scroll-top {
      background-color: var(--primary-color) !important;
      border-color: var(--primary-color) !important;
      transition: background-color 0.3s ease;
    }

    .scroll-top:hover {
      background-color: #e62f2f !important;
      border-color: #e62f2f !important;
    }

    /* Responsive Adjustments */
    @media (max-width: 991px) {
      .menu-filters ul {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        border: none;
      }
      .menu-filters li {
        margin: 5px;
      }
      .menu-filters a {
        padding: 8px 15px;
      }
    }
  </style>
</head>

<body class="index-page">
<%@ page import="com.groupd.booking.model.User" %>
<%
  User user = (User) session.getAttribute("user");
%>
<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
  <div class="container position-relative d-flex align-items-center justify-content-between">
    <a href="${pageContext.request.contextPath}/index.html" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
      <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
    </a>
    <ul class="nav">
      <li class="nav-item"><a href="${pageContext.request.contextPath}#hero" class="nav-link active">Home</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}#about" class="nav-link">About</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/menu" class="nav-link">Menu</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a></li>
      <% if (user == null) { %>
      <!-- If user not logged in -->
      <li class="nav-item"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/register" class="nav-link">Register</a></li>
      <% } else { %>
      <!-- If user is logged in -->
      <li class="nav-item"><a href="${pageContext.request.contextPath}/booking" class="nav-link">My Bookings</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/logout" class="nav-link">Logout</a></li>
      <% } %>
    </ul>
    </nav>
    <% if (user != null) { %>
    <!-- Show only when logged in -->
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book">Book a Table</a>
    <% } %>
  </div>
</header>

<main class="main">

  <!-- Menu Section -->
  <section id="menu" class="menu-section">
    <div class="container section-title" data-aos="fade-up">
      <h2>Our Menu</h2>
      <p><span>Check Our</span> <span class="description-title">Yummy Menu</span></p>
    </div>


<div>
    <div class="row gy-4">

      <c:forEach var="menu" items="${menuList}">
        <div class="col-lg-6 menu-item filter-main-courses">
          <img
                  src="${menu.image}"
                  class="img-fluid"
                  alt="${menu.name}"
                  onerror="this.onerror=null;this.src='https://placehold.co/400x200/FF5733/FFFFFF?text=${menu.name}';"
          />
          <h4>${menu.name}</h4>
          <p>${menu.description}</p>
          <div class="price">$${menu.price}</div>
        </div>
      </c:forEach>

    </div>
    </div>
  </section><!-- /Menu Section -->

</main><footer id="footer" class="footer bg-dark text-light pt-5">
  <div class="container">
    <div class="row gy-3">
      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-geo-alt icon fs-3 me-2"></i>
        <div class="address">
          <h4>Address</h4>
          <p>456 Lakeshore Road E</p>
          <p>Mississauga, ON L5G 1H4, Canada</p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-telephone icon fs-3 me-2"></i>
        <div>
          <h4>Contact</h4>
          <p>
            <strong>Phone:</strong> <span>+1 (905) 555-1234</span><br />
            <strong>Email:</strong> <span>reservations@yummy.com</span><br />
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-clock icon fs-3 me-2"></i>
        <div>
          <h4>Opening Hours</h4>
          <p>
            <strong>All Days:</strong> <span>Open 24/7</span>
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6">
        <h4>Follow Us</h4>
        <div class="social-links d-flex gap-3 fs-4">
          <a href="#" class="text-light" target="_blank"><i class="bi bi-twitter"></i></a>
          <a href="#" class="text-light" target="_blank"><i class="bi bi-facebook"></i></a>
          <a href="#" class="text-light" target="_blank"><i class="bi bi-instagram"></i></a>
          <a href="#" class="text-light" target="_blank"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>
    </div>
  </div>

  <div class="container text-center mt-4 pb-3 border-top border-secondary">
    <p class="mb-0">© <strong class="px-1 sitename">Yummy</strong> All Rights Reserved</p>
    <small class="text-muted">Designed with ❤️ by Group D .</small>
  </div>
</footer>

<a href="#" id="scroll-top"
   class="scroll-top d-flex align-items-center justify-content-center position-fixed bottom-0 end-0 m-3 btn btn-primary rounded-circle"
   style="width: 40px; height: 40px; z-index: 9999;">
  <i class="bi bi-arrow-up-short fs-4"></i>
</a>

<!-- Bootstrap Bundle JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
