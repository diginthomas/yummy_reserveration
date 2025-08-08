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

<main class="main">

    <!-
<main class="main">

    <!-- Admin Contact Messages Section -->
    <section id="admin-contacts" class="dashboard-section">
        <div class="container section-title" data-aos="fade-up">
            <h2>Manage Contacts</h2>
            <p><span>All Contact</span> <span class="description-title">Messages</span></p>
        </div>

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="row">
                <div class="col-12">
                    <c:choose>
                        <c:when test="${empty contactMessages}">
                            <div class="alert alert-info text-center" role="alert">
                                There are no contact messages at this time.
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="table-responsive">
                                <table class="table table-hover align-middle table-contact-messages">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Subject</th>
                                        <th>Message</th>
                                        <th>Date</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <!-- Loop through contact messages (replace with actual data) -->
                                    <c:forEach var="message" items="${contactMessages}">
                                        <tr>
                                            <td>${message.id}</td>
                                            <td>${message.name}</td>
                                            <td>${message.email}</td>
                                            <td>${message.subject}</td>
                                            <td>${message.message.length() > 50 ? message.message.substring(0, 47).concat('...') : message.message}</td>
                                            <td>${message.date}</td>
                                            <td>
                                                <form method="post" action="${pageContext.request.contextPath}/admin/contact/delete" style="display:inline;">
                                                    <input type="hidden" name="id" value="${message.id}" />
                                                    <button type="submit" class="btn btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this message?');">
                                                        Delete
                                                    </button>
                                                </form>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:otherwise>
                    </c:choose>


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
