<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Register - Yummy Bootstrap Template</title>
    <meta name="description" content="Registration page for Yummy Bootstrap Template" />
    <meta name="keywords" content="register, signup, yummy, bootstrap, template" />

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

        /* Register Section with Banner Background */
        .register-section { /* Renamed from login-section for clarity */
            background: url('https://images.unsplash.com/photo-1687425604239-89630e949104?q=80&w=1330&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center;
            background-size: cover;
            min-height: calc(100vh - 100px); /* Adjust for header/footer height */
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 0; /* Add padding for spacing */
            position: relative;
        }

        .register-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay for better readability of form */
            z-index: 1;
        }

        .form-container {
            max-width: 500px; /* Slightly wider for register form */
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

        .form-container h2 {
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

        .btn-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease, text-decoration 0.3s ease;
        }

        .btn-link:hover {
            text-decoration: underline;
            color: #e62f2f;
        }

        .header .nav-link.active {
            color: var(--primary-color) !important; /* Highlight active register link */
            font-weight: 600;
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
            .form-container {
                padding: 30px;
                margin: 20px;
            }
            .form-container h2 {
                font-size: 2rem;
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
        <a href="${pageContext.request.contextPath}" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
            <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
        </a>

        <nav id="navmenu" class="navmenu">
            <ul class="nav">
                <li class="nav-item"><a href="${pageContext.request.contextPath}#hero" class="nav-link ">Home</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}#about" class="nav-link">About</a></li>

                <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a></li>
                <% if (user == null) { %>
                <!-- If user not logged in -->
                <li class="nav-item"><a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/register" class="nav-link active">Register</a></li>
                <% } else { %>
                <!-- If user is logged in -->

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

    <!-- Register Section with Banner Background -->
    <section id="register-section" class="register-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="form-container">
                        <h2>Create Your Account</h2>
                        <%
                            String registerError = (String) session.getAttribute("registerError");
                            if (registerError != null) {
                        %>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <%= registerError %>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                                session.removeAttribute("registerError"); // clear it after showing
                            }
                        %>

                        <form action="${pageContext.request.contextPath}/register" method="post">
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="fullName" name="name" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="mb-3">
                                <label for="confirmPassword" class="form-label">Confirm Password</label>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                            </div>
                            <div class="d-grid gap-2 mb-3">
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                            <p class="text-center mt-3 mb-0">
                                Already have an account? <a href="${pageContext.request.contextPath}/login" class="btn-link">Login here</a>
                            </p>
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
