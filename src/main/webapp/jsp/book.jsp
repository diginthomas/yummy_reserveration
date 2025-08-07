
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<%
    String reservationSuccess = (String) session.getAttribute("reservationSuccess");
    String reservationError = (String) session.getAttribute("reservationError");
    if (reservationSuccess != null) session.removeAttribute("reservationSuccess");
    if (reservationError != null) session.removeAttribute("reservationError");
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>Book a Table - Yummy Bootstrap Template</title>
  <meta name="description" content="Book a table for reservation at Yummy Restaurant" />
  <meta name="keywords" content="reservation, book a table, restaurant, yummy, booking" />

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

    /* Reservation Section with Banner Background */
    .reservation-section {
      background: url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center;
      background-size: cover;
      min-height: calc(100vh - 100px); /* Adjust for header/footer height */
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 40px 0; /* Add padding for spacing */
      position: relative;
    }

    .reservation-section::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.6); /* Darker overlay for better readability of form */
      z-index: 1;
    }

    .reservation-form-container {
      max-width: 700px; /* Wider for more form fields */
      padding: 40px; /* Increased padding */
      border-radius: 12px; /* More rounded corners */
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2); /* Stronger shadow */
      background-color: rgba(255, 255, 255, 0.95); /* Slightly transparent white */
      z-index: 2; /* Ensure form is above overlay */
      position: relative;
      animation: fadeIn 1s ease-out; /* Simple fade-in animation */
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .reservation-form-container h2 {
      font-family: var(--heading-font); /* Use Amatic SC for headings */
      font-size: 2.5rem;
      color: var(--primary-color); /* Yummy's primary color */
      margin-bottom: 30px;
      text-align: center;
    }

    .form-control {
      border-radius: 8px; /* Rounded input fields */
      padding: 12px 15px;
      border: 1px solid #ddd;
    }

    .btn-primary {
      background-color: var(--primary-color); /* Yummy's primary color */
      border-color: var(--primary-color);
      padding: 12px 25px;
      border-radius: 8px;
      font-weight: 600;
      transition: background-color 0.3s ease, border-color 0.3s ease;
    }

    .btn-primary:hover {
      background-color: #e62f2f; /* Darker on hover */
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

    /* Responsive adjustments */
    @media (max-width: 768px) {
      .reservation-form-container {
        padding: 30px;
        margin: 20px;
      }
      .reservation-form-container h2 {
        font-size: 2rem;
      }
    }
  </style>
</head>

<script>
    window.onload = function () {
        // Set min date to tomorrow
        const dateInput = document.getElementById("date");
        const today = new Date();
        today.setDate(today.getDate() + 1); // Tomorrow
        const minDate = today.toISOString().split("T")[0];
        dateInput.min = minDate;
    };

    document.querySelector("form").addEventListener("submit", function (e) {
        const timeValue = document.getElementById("time").value;
        const dateValue = document.getElementById("date").value;

        // Validate time
        if (timeValue) {
            const [hour, minute] = timeValue.split(":").map(Number);

            // Time must be between 10:00 and 23:00
            if (hour < 10 || hour > 23 || (hour === 23 && minute > 0)) {
                e.preventDefault();
                alert("Please select a time between 10:00 AM and 11:00 PM.");
                return;
            }

            // Only allow 00 or 30 minutes
            if (minute !== 0 && minute !== 30) {
                e.preventDefault();
                alert("Please select a time in 30-minute intervals (e.g., 10:00, 10:30).");
                return;
            }
        }

        // Optional: Validate if date is missing
        if (!dateValue) {
            e.preventDefault();
            alert("Please select a reservation date.");
        }
    });
</script>




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
                <li class="nav-item"><a href="${pageContext.request.contextPath}#hero" class="nav-link active">Home</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}#about" class="nav-link">About</a></li>

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

  <!-- Reservation Section -->
  <section id="book-a-table" class="reservation-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-10">
          <div class="reservation-form-container">
            <h2>Book Your Table</h2>
            <p class="text-center mb-4 text-secondary">Fill out the form below to reserve your spot at Yummy Restaurant.</p>


              <%-- Success / Error Messages --%>
              <% if (reservationSuccess != null) { %>
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                  <%= reservationSuccess %>
                  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
              <% } %>
              <% if (reservationError != null) { %>
              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <%= reservationError %>
                  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
              <% } %>

              <form action="${pageContext.request.contextPath}/book" method="post">
                  <div class="row">
                      <div class="col-md-6 mb-3">
                          <label for="name" class="form-label">Your Name</label>
                          <input type="text" class="form-control" id="name" name="name"
                                 value="<%= user != null ? user.getName() : "" %>" required>
                      </div>
                      <div class="col-md-6 mb-3">
                          <label for="email" class="form-label">Your Email</label>
                          <input type="email" class="form-control" id="email" name="email"
                                 value="<%= user != null ? user.getEmail() : "" %>" required>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6 mb-3">
                          <label for="phone" class="form-label">Your Phone</label>
                          <input type="tel" class="form-control" id="phone" name="phone" placeholder="Your Phone" required>
                      </div>
                      <div class="col-md-6 mb-3">
                          <label for="date" class="form-label">Reservation Date</label>
                          <input type="date" class="form-control" id="date" name="date" required>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6 mb-3">
                          <label for="time" class="form-label">Reservation Time</label>
                          <input type="time" class="form-control" id="time" name="time" required step="1800">
                      </div>
                      <div class="col-md-6 mb-3">
                          <label for="numPeople" class="form-label">Number of People</label>
                          <input type="number" class="form-control" id="numPeople" name="numPeople" min="1" max="20" value="1" required>
                      </div>
                  </div>
                  <div class="mb-4">
                      <label for="message" class="form-label">Special Request (Optional)</label>
                      <textarea class="form-control" id="message" name="message" rows="4"
                                placeholder="Any special requests, allergies, or seating preferences?"></textarea>
                  </div>
                  <div class="d-grid gap-2">
                      <button type="submit" class="btn btn-primary">Book Now</button>
                  </div>
              </form>

          </div>
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
                    <a href="https://twitter.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-twitter"></i></a>
                    <a href="https://facebook.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-facebook"></i></a>
                    <a href="https://instagram.com/yummybistro" class="text-light" target="_blank"><i class="bi bi-instagram"></i></a>
                    <a href="https://linkedin.com/company/yummybistro" class="text-light" target="_blank"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>
        </div>
    </div>

    <div class="container text-center mt-4 pb-3 border-top border-secondary">
        <p class="mb-0">© <strong class="px-1 sitename">Yummy </strong> All Rights Reserved</p>
        <small class="text-muted">Designed with ❤️ by Group D y.</small>
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
