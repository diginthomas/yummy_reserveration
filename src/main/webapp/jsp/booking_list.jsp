<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>My Bookings - Yummy Bootstrap Template</title>
  <meta name="description" content="View your reservations at Yummy Restaurant" />
  <meta name="keywords" content="bookings, reservations, my bookings, yummy, restaurant" />

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

    /* My Bookings Section */
    .my-bookings-section {
      padding: 80px 0;
      background-color: #f8f9fa;
    }

    .booking-card {
      background-color: #fff;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
      padding: 30px;
      margin-bottom: 30px;
      transition: all 0.3s ease;
    }

    .booking-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .booking-card h5 {
      font-family: var(--heading-font);
      font-size: 1.8rem;
      color: var(--primary-color);
      margin-bottom: 20px;
    }

    .booking-card p {
      margin-bottom: 10px;
      font-size: 1rem;
      color: var(--secondary-color);
    }

    .booking-card p strong {
      color: var(--primary-color);
    }

    .booking-card .btn {
      margin-right: 10px;
      border-radius: 50px;
      padding: 8px 20px;
      font-weight: 600;
    }

    .booking-card .btn-outline-primary {
      color: var(--primary-color);
      border-color: var(--primary-color);
    }

    .booking-card .btn-outline-primary:hover {
      background-color: var(--primary-color);
      color: #fff;
    }

    .booking-card .btn-danger {
      background-color: #dc3545;
      border-color: #dc3545;
    }

    .booking-card .btn-danger:hover {
      background-color: #c82333;
      border-color: #bd2130;
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

    /* Responsive adjustments */
    @media (max-width: 768px) {
      .booking-card {
        padding: 20px;
      }
      .booking-card h5 {
        font-size: 1.5rem;
      }
      .booking-card .btn {
        width: 100%;
        margin-right: 0;
        margin-bottom: 10px;
      }
    }
  </style>
</head>

<body class="index-page">

<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
  <div class="container position-relative d-flex align-items-center justify-content-between">
    <a href="${pageContext.request.contextPath}/index.html" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
      <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
    </a>
    <nav id="navmenu" class="navmenu">
      <ul class="nav">
        <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#hero" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#about" class="nav-link">About</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/menu.jsp" class="nav-link">Menu</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/book-a-table.jsp" class="nav-link">Book a Table</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/my-bookings.jsp" class="nav-link active">My Bookings</a></li> <!-- New Active Nav Link -->
        <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#contact" class="nav-link">Contact</a></li>

        <li class="nav-item"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/register" class="nav-link">Register</a></li>
      </ul>
    </nav>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book-a-table.jsp">Book a Table</a>
  </div>
</header>

<main class="main">

  <!-- My Bookings Section -->
  <section id="my-bookings" class="my-bookings-section">
    <div class="container section-title" data-aos="fade-up">
      <h2>Your Reservations</h2>
      <p><span>Manage Your</span> <span class="description-title">Bookings</span></p>
    </div>

    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <c:choose>
            <c:when test="${empty bookings}">
              <div class="alert alert-info text-center" role="alert">
                You have no active bookings. <a href="${pageContext.request.contextPath}/book-a-table.jsp" class="alert-link">Book a table now!</a>
              </div>
            </c:when>
            <c:otherwise>
              <!-- Loop through bookings (replace with actual data from your backend) -->
              <c:forEach var="booking" items="${bookings}">
                <div class="booking-card">
                  <h5>Booking ID: ${booking.id}</h5>
                  <p><strong>Name:</strong> ${booking.name}</p>
                  <p><strong>Email:</strong> ${booking.email}</p>
                  <p><strong>Phone:</strong> ${booking.phone}</p>
                  <p><strong>Date:</strong> ${booking.date}</p>
                  <p><strong>Time:</strong> ${booking.time}</p>
                  <p><strong>Number of People:</strong> ${booking.no_people}</p>
                  <c:if test="${not empty booking.message}">
                    <p><strong>Special Request:</strong> ${booking.message}</p>
                  </c:if>
                  <div class="d-flex justify-content-end mt-4">
                    <!-- These buttons would trigger server-side actions -->
                    <button type="button" class="btn btn-outline-primary" onclick="alert('Confirmation sent for Booking ID: ${booking.id}')">Send Confirmation Again</button>
                    <button type="button" class="btn btn-danger" onclick="confirm('Are you sure you want to cancel Booking ID: ${booking.id}?')">Cancel Booking</button>
                  </div>
                </div>
              </c:forEach>
            </c:otherwise>
          </c:choose>

          <!-- Example static booking card if 'bookings' is empty for demonstration -->
          <c:if test="${empty bookings}">
            <div class="booking-card">
              <h5>Booking ID: 1001</h5>
              <p><strong>Name:</strong> John Doe</p>
              <p><strong>Email:</strong> john.doe@example.com</p>
              <p><strong>Phone:</strong> +1-123-456-7890</p>
              <p><strong>Date:</strong> 2025-08-15</p>
              <p><strong>Time:</strong> 19:00</p>
              <p><strong>Number of People:</strong> 4</p>
              <p><strong>Special Request:</strong> Table near the window, celebrating anniversary.</p>
              <div class="d-flex justify-content-end mt-4">
                <button type="button" class="btn btn-outline-primary" onclick="alert('Confirmation sent for Booking ID: 1001')">Send Confirmation Again</button>
                <button type="button" class="btn btn-danger" onclick="confirm('Are you sure you want to cancel Booking ID: 1001?')">Cancel Booking</button>
              </div>
            </div>
            <div class="booking-card">
              <h5>Booking ID: 1002</h5>
              <p><strong>Name:</strong> Jane Smith</p>
              <p><strong>Email:</strong> jane.smith@example.com</p>
              <p><strong>Phone:</strong> +1-987-654-3210</p>
              <p><strong>Date:</strong> 2025-08-20</p>
              <p><strong>Time:</strong> 18:30</p>
              <p><strong>Number of People:</strong> 2</p>
              <div class="d-flex justify-content-end mt-4">
                <button type="button" class="btn btn-outline-primary" onclick="alert('Confirmation sent for Booking ID: 1002')">Send Confirmation Again</button>
                <button type="button" class="btn btn-danger" onclick="confirm('Are you sure you want to cancel Booking ID: 1002?')">Cancel Booking</button>
              </div>
            </div>
          </c:if>

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
          <p>A108 Adam Street</p>
          <p>New York, NY 535022</p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-telephone icon fs-3 me-2"></i>
        <div>
          <h4>Contact</h4>
          <p>
            <strong>Phone:</strong> <span>+1 5589 55488 55</span><br />
            <strong>Email:</strong> <span>info@example.com</span><br />
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-clock icon fs-3 me-2"></i>
        <div>
          <h4>Opening Hours</h4>
          <p>
            <strong>Mon-Sat:</strong> <span>11AM - 11PM</span><br />
            <strong>Sunday:</strong> <span>Closed</span>
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6">
        <h4>Follow Us</h4>
        <div class="social-links d-flex gap-3 fs-4">
          <a href="#" class="text-light"><i class="bi bi-twitter"></i></a>
          <a href="#" class="text-light"><i class="bi bi-facebook"></i></a>
          <a href="#" class="text-light"><i class="bi bi-instagram"></i></a>
          <a href="#" class="text-light"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>
    </div>
  </div>

  <div class="container text-center mt-4 pb-3 border-top border-secondary">
    <p class="mb-0">© <strong class="px-1 sitename">Yummy</strong> All Rights Reserved</p>
    <div class="credits">
      Designed by
      <a href="https://bootstrapmade.com/" class="text-decoration-none text-light" target="_blank" rel="noopener noreferrer">BootstrapMade</a>
      Distributed by
      <a href="https://themewagon.com" class="text-decoration-none text-light" target="_blank" rel="noopener noreferrer">ThemeWagon</a>
    </div>
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
