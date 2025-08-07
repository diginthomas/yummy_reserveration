<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Yummy Bootstrap Template</title>
    <meta name="description" content="Yummy Bootstrap Template - Delicious Food Website" />
    <meta name="keywords" content="food, restaurant, yummy, bootstrap, template, delicious, healthy" />

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

        /* Hero Section */
        .hero {
            background-color: #eee; /* Light background for hero */
            padding: 120px 0 60px 0;
            min-height: 80vh;
            display: flex;
            align-items: center;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 700;
            line-height: 56px;
            color: var(--secondary-color);
        }

        .hero p {
            color: var(--text-color);
            margin-bottom: 30px;
        }

        .hero .btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            padding: 12px 30px;
            border-radius: 50px;
            font-weight: 600;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }

        .hero .btn-primary:hover {
            background-color: #e62f2f;
            border-color: #e62f2f;
        }

        .hero .btn-outline-secondary {
            border-color: var(--primary-color);
            color: var(--primary-color);
            padding: 12px 30px;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        .hero .btn-outline-secondary:hover {
            background-color: var(--primary-color);
            color: #fff;
        }

        .hero .hero-img img {
            max-width: 100%;
            height: auto;
            animation: bounce 2s infinite alternate ease-in-out; /* Subtle bounce animation */
        }

        @keyframes bounce {
            0% { transform: translateY(0); }
            100% { transform: translateY(-10px); }
        }

        /* About Section */
        .about {
            padding: 80px 0;
        }

        .about .content ul li {
            padding-bottom: 10px;
            list-style: none;
            display: flex;
            align-items: flex-start;
        }

        .about .content ul i {
            font-size: 20px;
            padding-right: 8px;
            color: var(--primary-color); /* Ensure checkmark color is primary */
        }

        .about .book-a-table {
            background-color: var(--primary-color);
            color: #fff;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
            text-align: center;
        }

        .about .book-a-table h3 {
            color: #fff;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .about .book-a-table p {
            color: #fff;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 0;
        }

        .about .pulsating-play-btn {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: var(--primary-color);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            color: #fff;
            transition: all 0.3s ease;
        }

        .about .pulsating-play-btn::before {
            content: '';
            position: absolute;
            border: 6px solid var(--primary-color);
            border-radius: 50%;
            width: 90px;
            height: 90px;
            animation: pulsate 1.5s ease-out infinite;
            opacity: 0;
        }

        @keyframes pulsate {
            0% { transform: scale(0.6); opacity: 1; }
            100% { transform: scale(1.2); opacity: 0; }
        }

        /* Why Us Section */
        .why-us {
            padding: 80px 0;
            background-color: #f8f9fa; /* Consistent light background */
        }

        .why-us .why-box,
        .why-us .icon-box {
            padding: 30px;
            border-radius: 12px; /* More rounded corners */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08); /* Enhanced shadow */
            background-color: #fff;
            transition: all 0.3s ease;
            height: 100%; /* Ensure boxes have equal height */
        }

        .why-us .icon-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .why-us .icon-box i {
            font-size: 48px; /* Larger icons */
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .why-us .icon-box h4 {
            font-size: 22px;
            font-weight: 700;
            color: var(--secondary-color);
            margin-bottom: 10px;
        }

        .why-us .icon-box p {
            font-size: 15px;
            color: var(--text-color);
        }

        .why-us .btn-link {
            color: var(--primary-color);
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .why-us .btn-link:hover {
            text-decoration: underline;
            color: #e62f2f;
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
            .hero {
                text-align: center;
            }
            .hero .hero-img {
                margin-top: 40px;
            }
            .hero .d-flex {
                justify-content: center !important;
            }
            .about .content {
                margin-top: 40px;
            }
        }

        @media (max-width: 768px) {
            .section-title p {
                font-size: 36px;
            }
            .hero h1 {
                font-size: 36px;
                line-height: 44px;
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

    <!-- Hero Section -->
    <section id="hero" class="hero section">
        <div class="container">
            <div class="row gy-4 justify-content-center justify-content-lg-between align-items-center">
                <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center">
                    <h1 data-aos="fade-up">Enjoy Your Healthy<br />Delicious Food</h1>
                    <p data-aos="fade-up" data-aos-delay="100">Welcome to Yummy! We’re a passionate team of chefs and designers committed to crafting exceptional meals and unforgettable dining experiences. Every plate we serve is designed with flavor, nutrition, and care in mind.</p>
                    <div class="d-flex gap-3" data-aos="fade-up" data-aos-delay="200">
                        <a href="${pageContext.request.contextPath}/book" class="btn btn-primary">Book a Table</a>
                        <a href="https://www.youtube.com/watch?v=Y7f98aduVJ8" class="glightbox btn btn-outline-secondary d-flex align-items-center gap-2">
                            <i class="bi bi-play-circle"></i><span>Watch Video</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 order-1 order-lg-2 hero-img" data-aos="zoom-out">
                    <img src="https://plus.unsplash.com/premium_photo-1695658519502-f794885538f8?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid animated" alt="Delicious Food" />
                </div>
            </div>
        </div>
    </section><!-- /Hero Section -->

    <!-- About Section -->
    <section id="about" class="about section">
        <div class="container section-title" data-aos="fade-up">
            <h2>About Us</h2>
            <p><span>Learn More</span> <span class="description-title">About Us</span></p>
        </div>
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-7" data-aos="fade-up" data-aos-delay="100">
                    <img src="https://images.unsplash.com/photo-1634881091116-1876b8c2b414?q=80&w=715&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid mb-4 rounded-3 shadow-sm" alt="About Yummy" />
                    <div class="book-a-table">
                        <h3>Book a Table</h3>
                        <p>+1 5589 55488 55</p>
                    </div>
                </div>
                <div class="col-lg-5" data-aos="fade-up" data-aos-delay="250">
                    <div class="content ps-0 ps-lg-5">
                        <p class="fst-italic">
                            At Yummy, we blend culinary artistry with heartfelt service to bring you an unforgettable dining experience. Our kitchen is powered by talented chefs who believe in cooking with passion and purpose. From sourcing fresh ingredients to creating handcrafted dishes, everything we do is rooted in quality and creativity.
                        </p>
                        <ul>
                            <li><i class="bi bi-check-circle-fill"></i>We use only fresh, high-quality ingredients.</li>
                            <li><i class="bi bi-check-circle-fill"></i>  Each dish is crafted to deliver a perfect balance of flavor and nutrition..</li>
                            <li><i class="bi bi-check-circle-fill"></i>Our chefs continuously innovate with new and exciting menu options..</li>
                        </ul>
                        <p>
                            Whether you're stopping by for a quick lunch or celebrating a special occasion, our warm ambiance and friendly staff are here to make you feel at home. Come taste the difference that dedication makes.
                        </p>
                        <div class="position-relative mt-4">
                            <img src="https://images.unsplash.com/photo-1600565193348-f74bd3c7ccdf?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid rounded-3 shadow-sm" alt="About Video" />
                            <a href="https://www.youtube.com/watch?v=DR1SLG_bmuk" class="glightbox pulsating-play-btn"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- /About Section -->

    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="why-box">
                        <h3>Why Choose Yummy</h3>
                        <p>
                            At Yummy, quality meets passion. Our chefs prepare each dish with care, using only the freshest ingredients. We believe in serving food that satisfies the soul.
                        </p>
                        <div class="text-center">
                            <a href="#" class="btn-link">Learn More <i class="bi bi-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 d-flex align-items-stretch">
                    <div class="row gy-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="col-xl-4">
                            <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                <i class="bi bi-clipboard-data"></i>
                                <h4 class="mt-3">Tailored Dining Experiences</h4>
                                <p>We understand our guests have unique tastes. Our team works hard to offer dishes that cater to different preferences, whether you're vegetarian, vegan, or meat-loving.</p>
                            </div>
                        </div>
                        <div class="col-xl-4" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                <i class="bi bi-gem"></i>
                                <h4 class="mt-3">Fresh Ingredients. Every Time.</h4>
                                <p>We partner with local farms and trusted suppliers to ensure that every bite you take is fresh, clean, and full of flavor.</p>
                            </div>
                        </div>
                        <div class="col-xl-4" data-aos="fade-up" data-aos-delay="400">
                            <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                <i class="bi bi-inboxes"></i>
                                <h4 class="mt-3">Modern Dining, Timeless Taste</h4>
                                <p>Our restaurant combines a stylish interior with timeless dishes that keep you coming back for more.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- /Why Us Section -->

    <!-- Placeholder for other sections like Menu, Testimonials, Events, Chefs, Gallery, Contact -->
    <!-- You can add more sections here following the same styling principles -->

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
