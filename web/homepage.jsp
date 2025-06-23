<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Kindergarten Management System</title>
    <!-- AOS animate on scroll -->
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Caveat+Brush&family=Hi+Melody&family=Patrick+Hand&display=swap" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="icon" href="./assets/image/logo2-removebg-preview.png" />
    <!-- Fullpage.js and Swiper -->
    <link rel="stylesheet" href="/node_modules/fullpage.js/dist/fullpage.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <!-- Custom Styles -->
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Patrick Hand', sans-serif;
            color: #333;
            overflow-x: hidden;
            line-height: 1.6;
        }

        /* Header Styles */
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 40px;
            background-color: #fff;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header-logo img {
            height: 45px;
        }
        .header-nav {
            display: flex;
            gap: 20px;
        }
        .navigation-links {
            color: #8e44ad;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s, text-decoration 0.3s;
        }
        .navigation-links:hover {
            color: #6a2c8a;
            text-decoration: underline;
        }
        .right-side {
            display: flex;
            gap: 15px;
        }
        .login-btns {
            padding: 10px 20px;
            border: 2px solid #8e44ad;
            border-radius: 25px;
            color: #8e44ad;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }
        .btn-highlight {
            background-color: #8e44ad;
            color: #fff;
        }
        .login-btns:hover {
            background-color: #8e44ad;
            color: #fff;
        }

        /* Section Styles */
        .section {
            padding: 100px 40px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .section-text-img {
            display: flex;
            gap: 40px;
            align-items: center;
            padding: 60px 80px;
        }
        .text-container {
            flex: 1;
        }
        .text-container h2 {
            font-size: 2.8rem;
            color: #333;
            margin-bottom: 20px;
        }
        .text-container p {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 15px;
        }
        .highlight {
            background: #d1c4e9;
            padding: 3px 10px;
            border-radius: 5px;
            font-weight: bold;
        }

        /* Swiper Styles */
        .swiper.mySwiper {
            flex: 1;
            aspect-ratio: 5 / 3;
            border-radius: 12px;
            overflow: hidden;
        }
        .swiper-slide img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 12px;
        }
        .swiper-button-next,
        .swiper-button-prev {
            color: #8e44ad;
            background: rgba(255, 255, 255, 0.9);
            width: 45px;
            height: 45px;
            border-radius: 50%;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, background 0.3s;
        }
        .swiper-button-next:hover,
        .swiper-button-prev:hover {
            background: rgba(142, 68, 173, 0.2);
            transform: scale(1.1);
        }
        .swiper-button-next::after,
        .swiper-button-prev::after {
            font-size: 18px;
        }

        /* Vision Section */
        .vision-section {
            display: flex;
            gap: 30px;
            padding: 80px 60px;
            background-color: #f5f2fb;
            justify-content: center;
            flex-wrap: wrap;
        }
        .mission-card {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 320px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .mission-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.15);
        }
        .mission-card h3 {
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: #333;
        }
        .mission-card span {
            color: #8e44ad;
        }

        /* Feedback Section */
        .section-small-blocks {
            display: flex;
            gap: 30px;
            flex-wrap: wrap;
            justify-content: center;
        }
        .small-block {
            background: #f9f9f9;
            padding: 30px;
            border-radius: 12px;
            width: 400px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .small-block h1 {
            font-size: 3rem;
            color: #8e44ad;
            margin-bottom: 10px;
        }
        .small-block h5 {
            font-size: 1rem;
            color: #8e44ad;
            margin-top: 15px;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background: #8e44ad;
            color: #fff;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .section-text-img {
                flex-direction: column;
                text-align: center;
                padding: 40px 20px;
            }
            .swiper.mySwiper {
                width: 100%;
                max-width: 600px;
            }
        }
        @media (max-width: 768px) {
            header {
                flex-direction: column;
                gap: 15px;
                padding: 10px 20px;
            }
            .header-nav {
                flex-wrap: wrap;
                justify-content: center;
                gap: 10px;
            }
            .section {
                padding: 80px 20px;
            }
            .swiper.mySwiper {
                aspect-ratio: 4 / 3;
            }
            .mission-card {
                width: 100%;
                max-width: 400px;
            }
            .small-block {
                width: 100%;
                max-width: 350px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-logo">
            <a href="#welcome">
                <img src="./assets/image/logo.png" alt="Logo" />
            </a>
        </div>
        <nav class="header-nav">
            <a href="#about-us" class="navigation-links">About Us</a>
            <a href="#section-2" class="navigation-links">Where We Are</a>
            <a href="#section-3" class="navigation-links">Vision & Mission</a>
            <a href="#section-4" class="navigation-links">What We Do</a>
            <a href="#feedback" class="navigation-links">Parent Feedback</a>
        </nav>
        <div class="right-side">
            <a href="get_otp_register" class="login-btns btn-highlight">Register</a>
            <a href="login" class="login-btns">Login</a>
        </div>
    </header>

    <div class="section section-custom" id="welcome">
        <div class="text-container">
            <h1>We embrace the <span class="highlight">magic</span> of childhood</h1>
            <p>We aim to care for your child as you would at home in a safe, fun, and happy way.</p>
        </div>
    </div>

    <div class="section section-custom" id="about-us">
        <div class="text-container">
            <h2>A little bit <span class="highlight">about us</span></h2>
            <p>With over <span class="highlight">10 years</span> in early childhood education, our Kindergarten Management System is trusted by parents and <span class="highlight">educational experts</span> for modern management solutions.</p>
            <p>Designed for children aged <span class="highlight">0-6 years</span>, our system supports teachers with detailed observations, attendance tracking, and health monitoring, creating a personalized <span class="highlight">roadmap for each child</span>.</p>
        </div>
    </div>

    <div class="section section-custom section-text-img" id="section-2">
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="./assets/image/section-2.jpeg" alt="Image 1" />
                </div>
                <div class="swiper-slide">
                    <img src="./assets/image/image2.jpg" alt="Image 2" />
                </div>
                <div class="swiper-slide">
                    <img src="./assets/image/image3.jpg" alt="Image 3" />
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <div class="text-container">
            <h2><span>Vietnam's leading solution</span> for kindergarten management</h2>
            <p>Launched in May 2025, KMS streamlines kindergarten operations, supporting <span class="highlight">educational experts</span> with advanced technology.</p>
            <p>Used in <span class="highlight">Hanoi</span>, <span class="highlight">Ho Chi Minh City</span>, and <span class="highlight">Quang Ninh</span>, KMS manages attendance, health, communication, and scheduling.</p>
        </div>
    </div>

    <div class="section section-custom vision-section" id="section-3">
        <div class="mission-card" data-aos="fade-up" data-aos-delay="100">
            <h3>Our <span>mission</span></h3>
            <p>KMS is committed to providing a sustainable educational environment, inspiring creativity.</p>
            <p>We feel privileged to share your child’s early years, ensuring the right place for your child and family.</p>
        </div>
        <div class="mission-card" data-aos="fade-up" data-aos-delay="200">
            <h3>Our <span>goals</span></h3>
            <p>Our carers provide love and care in a warm, friendly environment where your child feels safe and happy.</p>
            <p>We believe in strong partnerships between families and educators, sharing information for lasting bonds.</p>
        </div>
        <div class="mission-card" data-aos="fade-up" data-aos-delay="300">
            <h3>Things <span>to do</span></h3>
            <ul>
                <li>Create engaging environments through role play</li>
                <li>Encourage respect and awareness of nature</li>
                <li>Provide healthy meals with natural ingredients</li>
            </ul>
        </div>
    </div>

    <div class="section section-custom section-text-img" id="section-4">
        <div class="text-container">
            <h2><span>Teaching, nurturing, and building</span> confidence</h2>
            <p>We aim to lead in education from Kindergarten to Pre-University, blending Eastern values with international standards to train global citizens.</p>
            <p>Our innovative programs in a challenging learning environment keep students passionate about lifelong learning.</p>
        </div>
        <img src="./assets/image/section-4.jpeg" alt="Section 4 Image" style="flex: 1; border-radius: 12px; max-width: 100%;" />
    </div>

    <div class="section section-custom section-small-blocks" id="feedback">
        <div class="small-block">
            <h1>"</h1>
            <p>My 3.5-year-old has been at the school since its founding. The environment and methods are key in education, and the school excels in both.</p>
            <h5><span>Mr. Phạm Thanh Tùng - Parent of Nancy</span></h5>
        </div>
        <div class="small-block">
            <h1>"</h1>
            <p>The school’s extracurricular activities impress me most. Each event is meaningful, fostering creativity, skills, and good values in children.</p>
            <h5><span>Mrs. Ngô Thanh Thúy - Parent of Bin, Orchid Class</span></h5>
        </div>
    </div>

    <footer class="section section-custom" id="footer">
        Copyright © 2025. All Rights Reserved | Designed by: @phucvm
    </footer>

    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.9/fullpage.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script>
        // Initialize Swiper
        const swiper = new Swiper('.mySwiper', {
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
        });

        // Initialize AOS
        AOS.init({
            duration: 800,
            once: true,
        });
    </script>
</body>
</html>