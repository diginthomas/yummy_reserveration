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

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="menu-filters">
                <ul>
                    <li><a class="active" data-filter="*" href="#menu">All</a></li>
                    <li><a data-filter=".starters" href="#menu">Starters</a></li>
                    <li><a data-filter=".main-courses" href="#menu">Main Courses</a></li>
                    <li><a data-filter=".desserts" href="#menu">Desserts</a></li>
                    <li><a data-filter=".drinks" href="#menu">Drinks</a></li>
                </ul>
            </div>

            <div class="row gy-5 menu-container">

                <!-- Starters -->
                <div class="col-lg-6 menu-item filter-starters">
                    <img src="https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Bruschetta" onerror="this.onerror=null;this.src='https://placehold.co/400x200/FF5733/FFFFFF?text=Bruschetta';" />
                    <h4>Bruschetta</h4>
                    <p>Toasted bread, tomatoes, basil, garlic, and olive oil.</p>
                    <div class="price">$8.50</div>
                </div>

                <div class="col-lg-6 menu-item filter-starters">
                    <img src="https://images.unsplash.com/photo-1565299624946-b28f40a027b4?q=80&w=1080&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Caprese Salad" onerror="this.onerror=null;this.src='https://placehold.co/400x200/33A0FF/FFFFFF?text=Caprese+Salad';" />
                    <h4>Caprese Salad</h4>
                    <p>Fresh mozzarella, ripe tomatoes, basil, and balsamic glaze.</p>
                    <div class="price">$10.00</div>
                </div>

                <!-- Main Courses -->
                <div class="col-lg-6 menu-item filter-main-courses">
                    <img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Grilled Salmon" onerror="this.onerror=null;this.src='https://placehold.co/400x200/FFC300/FFFFFF?text=Grilled+Salmon';" />
                    <h4>Grilled Salmon</h4>
                    <p>Pan-seared salmon fillet with roasted vegetables and lemon butter sauce.</p>
                    <div class="price">$24.99</div>
                </div>

                <div class="col-lg-6 menu-item filter-main-courses">
                    <img src="https://images.unsplash.com/photo-1598511653193-410a08e68407?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Chicken Parmesan" onerror="this.onerror=null;this.src='https://placehold.co/400x200/FF5733/FFFFFF?text=Chicken+Parmesan';" />
                    <h4>Chicken Parmesan</h4>
                    <p>Breaded chicken breast, marinara sauce, melted mozzarella, served with pasta.</p>
                    <div class="price">$18.75</div>
                </div>

                <!-- Desserts -->
                <div class="col-lg-6 menu-item filter-desserts">
                    <img src="https://images.unsplash.com/photo-1587314168485-3236d6710814?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Chocolate Lava Cake" onerror="this.onerror=null;this.src='https://placehold.co/400x200/33A0FF/FFFFFF?text=Lava+Cake';" />
                    <h4>Chocolate Lava Cake</h4>
                    <p>Warm chocolate cake with a molten center, served with vanilla ice cream.</p>
                    <div class="price">$9.00</div>
                </div>

                <div class="col-lg-6 menu-item filter-desserts">
                    <img src="https://images.unsplash.com/photo-1563729781605-e47e3a9c7b9f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Cheesecake" onerror="this.onerror=null;this.src='https://placehold.co/400x200/FFC300/FFFFFF?text=Cheesecake';" />
                    <h4>New York Cheesecake</h4>
                    <p>Creamy cheesecake with a graham cracker crust, topped with berry compote.</p>
                    <div class="price">$8.50</div>
                </div>

                <!-- Drinks -->
                <div class="col-lg-6 menu-item filter-drinks">
                    <img src="https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Fresh Orange Juice" onerror="this.onerror=null;this.src='https://placehold.co/400x200/FF5733/FFFFFF?text=Orange+Juice';" />
                    <h4>Fresh Orange Juice</h4>
                    <p>Freshly squeezed orange juice.</p>
                    <div class="price">$4.00</div>
                </div>

                <div class="col-lg-6 menu-item filter-drinks">
                    <img src="https://images.unsplash.com/photo-1525381335031-8938740d7969?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid" alt="Espresso" onerror="this.onerror=null;this.src='https://placehold.co/400x200/33A0FF/FFFFFF?text=Espresso';" />
                    <h4>Espresso</h4>
                    <p>Rich, strong shot of coffee.</p>
                    <div class="price">$3.50</div>
                </div>

            </div>
        </div>
    </section><!-- /Menu Section -->

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
