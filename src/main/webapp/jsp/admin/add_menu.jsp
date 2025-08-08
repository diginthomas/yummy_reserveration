<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>Admin Dashboard - Yummy Bootstrap Template</title>
  <meta name="description" content="Admin dashboard for managing reservations at Yummy Restaurant" />
  <meta name="keywords" content="admin, dashboard, bookings, reservations, manage, restaurant" />

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

    /* Header Styling (Simplified for Admin) */
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

    /* Admin Dashboard Specific Styles */
    .dashboard-section {
      padding: 80px 0;
      background-color: #f8f9fa;
    }

    .table-responsive {
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
      background-color: #fff;
      overflow-x: auto; /* Enable horizontal scroll for smaller screens */
    }

    .table-bookings {
      min-width: 1000px; /* Ensure table doesn't shrink too much */
    }

    .table-bookings th {
      background-color: var(--secondary-color);
      color: #fff;
      font-family: var(--body-font);
      font-weight: 600;
      white-space: nowrap;
    }

    .table-bookings td {
      vertical-align: middle;
      white-space: nowrap;
    }

    .table-bookings tbody tr:hover {
      background-color: #f1f1f1;
    }

    .table-bookings .btn {
      border-radius: 50px;
      padding: 5px 15px;
      font-weight: 500;
      margin-right: 5px;
    }

    .btn-confirm {
      background-color: #28a745;
      border-color: #28a745;
      color: #fff;
    }

    .btn-confirm:hover {
      background-color: #218838;
      border-color: #1e7e34;
    }

    .btn-resend {
      background-color: #007bff;
      border-color: #007bff;
      color: #fff;
    }

    .btn-resend:hover {
      background-color: #0069d9;
      border-color: #0062cc;
    }

    .btn-cancel {
      background-color: #dc3545;
      border-color: #dc3545;
      color: #fff;
    }

    .btn-cancel:hover {
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
  </style>
</head>

<body class="index-page">

<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
  <div class="container position-relative d-flex align-items-center justify-content-between">
    <a href="${pageContext.request.contextPath}/index.html" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
      <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
    </a><nav id="navmenu" class="navmenu">
    <ul class="nav">
      <li class="nav-item"><a href="${pageContext.request.contextPath}/admin" class="nav-link">Admin Home</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/contact" class="nav-link">Contacts</a></li>

      <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/users" class="nav-link">Users</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/logout" class="nav-link">Logout</a></li>
    </ul>
  </nav>
    <h4 class="m-0 ms-auto me-3 text-secondary">Admin Dashboard</h4>
  </div>
</header>


<main class="container my-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <h2 class="mb-4 text-center">Add New Menu Item</h2>
      <div class="card p-4">
        <!-- Form for adding a new menu item with image upload -->
        <form action="${pageContext.request.contextPath}/admin/add/menu" method="post" enctype="multipart/form-data">
          <div class="mb-3">
            <label for="name" class="form-label">Item Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="E.g., Chicken Biryani" required>
          </div>
          <c:if test="${param.success eq 'true'}">
            <div class="alert alert-success text-center" role="alert">
              Menu item added successfully!
            </div>
          </c:if>

          <c:if test="${param.error eq 'true'}">
            <div class="alert alert-danger text-center" role="alert">
              Failed to add menu item. Please try again.
            </div>
          </c:if>

          <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
          </div>

          <div class="mb-3">
            <label for="price" class="form-label">Price ($)</label>
            <input type="number" class="form-control" id="price" name="price" step="0.01" min="0" required>
          </div>

          <div class="mb-3">
            <label for="image" class="form-label">Image URL</label>
            <input type="text" class="form-control" id="image" name="image" placeholder="https://example.com/image.jpg" required>
          </div>


          <div class="text-center">
            <input type="submit" class="btn btn-submit" value="Add Item">

          </div>
        </form>
      </div>
    </div>
  </div>
</main>

<footer class="bg-dark text-light text-center py-4 mt-5">
  <p class="mb-0">© 2025 Yummy. All rights reserved. Designed by Group D.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- ✅ No JS to block form submission -->
</body>
</html>
