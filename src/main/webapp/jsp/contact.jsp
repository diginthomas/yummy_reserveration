<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>Contact - Yummy Bootstrap Template</title>
  <meta name="description" content="Contact Yummy Restaurant for reservations or inquiries" />
  <meta name="keywords" content="contact, reservations, restaurant, yummy, address, phone, email" />

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
      background-color: #f8f9fa;
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
      border-radius: 50px;
      transition: background-color 0.3s ease, border-color 0.3s ease;
    }

    .header .btn-primary:hover {
      background-color: #e62f2f;
      border-color: #e62f2f;
    }

    /* Contact Section */
    .contact-section {
      padding: 80px 0;
    }

    .contact-details {
      display: flex;
      align-items: flex-start;
      margin-bottom: 30px;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
    }

    .contact-details i {
      font-size: 24px;
      color: var(--primary-color);
      margin-right: 15px;
      line-height: 1;
    }

    .contact-details h3 {
      font-size: 1.2rem;
      font-weight: 600;
      margin-bottom: 5px;
      color: var(--secondary-color);
    }

    .contact-details p {
      font-size: 14px;
      margin: 0;
    }

    #map-container {
      border-radius: 8px;
      overflow: hidden;
      height: 350px;
      margin-bottom: 30px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
    }

    .contact-form {
      background-color: #fff;
      padding: 40px;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
    }

    .contact-form .form-control {
      border-radius: 0;
      box-shadow: none;
      border-color: #dee2e6;
      height: 44px;
    }

    .contact-form textarea.form-control {
      height: auto;
    }

    .contact-form .btn-primary {
      background-color: var(--primary-color);
      border-color: var(--primary-color);
      border-radius: 50px;
      padding: 12px 30px;
      font-weight: 600;
      transition: background-color 0.3s;
    }

    .contact-form .btn-primary:hover {
      background-color: #e62f2f;
      border-color: #e62f2f;
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
  </style>
</head>

<body class="index-page">

<body class="index-page">
<%@ page import="com.groupd.booking.model.User" %>
<%
  User user = (User) session.getAttribute("user");
%>

<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
  <div class="container position-relative d-flex align-items-center justify-content-between">
    <a href="${pageContext.request.contextPath}" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
      <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
    </a>

    <nav id="navmenu" class="navmenu">
      <ul class="nav">
        <li class="nav-item"><a href="${pageContext.request.contextPath}#hero" class="nav-link ">Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}#about" class="nav-link">About</a></li>

        <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link active">Contact</a></li>
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

  <!-- Contact Section -->
  <section id="contact" class="contact-section">
    <div class="container section-title" data-aos="fade-up">
      <h2>Contact</h2>
      <p><span>Need Help?</span> <span class="description-title">Contact Us</span></p>
    </div>

    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <div class="row">
        <div class="col-lg-6">
          <div id="map-container" class="mb-4">
            <iframe style="border:0; width: 100%; height: 100%;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.3787754655613!2d-73.99222418464303!3d40.7554627793275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258525b6a12b9%3A0xc0010998379471d8!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sca!4v1628000000000!5m2!1sen!2sca" frameborder="0" allowfullscreen="" loading="lazy"></iframe>
          </div>

          <div class="contact-details">
            <i class="bi bi-geo-alt"></i>
            <div>
              <h3>Address</h3>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>
          </div>

          <div class="contact-details">
            <i class="bi bi-envelope"></i>
            <div>
              <h3>Email Us</h3>
              <p>info@example.com</p>
            </div>
          </div>

          <div class="contact-details">
            <i class="bi bi-telephone"></i>
            <div>
              <h3>Call Us</h3>
              <p>+1 5589 55488 55</p>
            </div>
          </div>
        </div>

        <div class="col-lg-6">
          <% if (request.getAttribute("msg") != null) { %>
          <div class="alert alert-success">
            <%= request.getAttribute("msg") %>
          </div>
          <% } else if (request.getAttribute("error") != null) { %>
          <div class="alert alert-danger">
            <%= request.getAttribute("error") %>
          </div>
          <% } %>
          <form action="${pageContext.request.contextPath}/contact" method="post" role="form" class="contact-form">
            <div class="row gy-4">
              <div class="col-md-6">
                <input type="text" name="name" class="form-control" placeholder="Your Name" required>
              </div>
              <div class="col-md-6">
                <input type="email" class="form-control" name="email" placeholder="Your Email" required>
              </div>
              <div class="col-md-12">
                <input type="text" class="form-control" name="subject" placeholder="Subject" required>
              </div>
              <div class="col-md-12">
                <textarea class="form-control" name="message" rows="6" placeholder="Message" required></textarea>
              </div>
              <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary">Send Message</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

</main>
<footer id="footer" class="footer bg-dark text-light pt-5">
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
            <strong>Email:</strong> <span>reservations@yummybistro.com</span><br />
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
          <a href="https://twitter.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-twitter"></i></a>
          <a href="https://facebook.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-facebook"></i></a>
          <a href="https://instagram.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-instagram"></i></a>
          <a href="https://linkedin.com/company/yummybistro" class="text-light" target="_blank"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>
    </div>
  </div>

  <div class="container text-center mt-4 pb-3 border-top border-secondary">
    <p class="mb-0">© <strong class="px-1 sitename">Yummy Bistro</strong> All Rights Reserved</p>
    <small class="text-muted">Designed with ❤️ by Group D and working all days, 24/7 — just Yummy.</small>
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
