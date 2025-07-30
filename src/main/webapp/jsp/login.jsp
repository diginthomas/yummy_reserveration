<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Login - Yummy Bootstrap Template</title>
    <meta name="description" content="Login page for Yummy Bootstrap Template" />
    <meta name="keywords" content="login, yummy, bootstrap, template" />

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

        /* Login Section with Banner Background */
        .login-section {
            background: url('https://images.unsplash.com/photo-1542365887-1149961dccc7?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center;
            background-size: cover;
            min-height: calc(100vh - 100px); /* Adjust for header/footer height */
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 0; /* Add padding for spacing */
            position: relative;
        }

        .login-section::before {
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
            max-width: 450px;
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
            color: var(--primary-color) !important; /* Highlight active login link */
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

<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
    <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="${pageContext.request.contextPath}/index.html" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
            <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
        </a>
        <nav id="navmenu" class="navmenu">
            <ul class="nav">
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#hero" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#about" class="nav-link">About</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index.html#contact" class="nav-link">Contact</a></li>

                <li class="nav-item"><a href="${pageContext.request.contextPath}/login" class="nav-link active">Login</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/register" class="nav-link">Register</a></li>
            </ul>
        </nav>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.html#book-a-table">Book a Table</a>
    </div>
</header>

<main class="main">

    <!-- Login Section with Banner Background -->
    <section id="login-section" class="login-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="form-container">
                        <h2>Login to Your Account</h2>
                        <%
                            String loginError = (String) session.getAttribute("loginError");
                            if (loginError != null) {
                        %>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <%= loginError %>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                                session.removeAttribute("loginError"); // clear it after showing
                            }
                        %>
                        <form action="login" method="post">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="email" name="email" required aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="mb-3 form-check d-flex justify-content-between align-items-center">
                                <div>
                                    <input type="checkbox" class="form-check-input" id="rememberMe">
                                    <label class="form-check-label" for="rememberMe">Remember me</label>
                                </div>
                                <a href="#" class="btn-link">Forgot password?</a>
                            </div>
                            <div class="d-grid gap-2 mb-3">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                            <p class="text-center mt-3 mb-0">
                                Don't have an account? <a href="${pageContext.request.contextPath}/register" class="btn-link">Register here</a>
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
