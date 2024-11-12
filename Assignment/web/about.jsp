<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
              rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="home">Car<span>Book</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item "><a href="home" class="nav-link">Home</a></li>
                        <li class="nav-item active "><a href="about.jsp" class="nav-link">About</a></li>

                        <li class="nav-item"><a href="listCar" class="nav-link">Cars</a></li>

                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown">Profile
                            </a>


                            <c:if test="${sessionScope.user != null}"> 
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="profile"><i class="fas fa-sliders-h fa-fw"></i> Account</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <c:if test="${sessionScope.role == 'Admin'}">
                                        <li><a class="dropdown-item" href="listAccount"><i class="fas fa-exchange-alt"></i> ListAccounts</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        </c:if>

                                    <c:if test="${sessionScope.role == 'Manager'}">
                                        <li><a class="dropdown-item" href="carManager"><i class="fas fa-exchange-alt"></i> ListCars</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        </c:if>

                                    <c:if test="${sessionScope.role == 'Employee'}">
                                        <li><a class="dropdown-item" href="listOrder"><i class="fas fa-exchange-alt"></i> ListOrders</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        </c:if>

                                    <c:if test="${sessionScope.role == 'Customer'}">

                                        <li><a class="dropdown-item" href="order"><i class="fas fa-exchange-alt"></i> Orders</a></li>
                                        <li><hr class="dropdown-divider"></li>

                                    </c:if>






                                    <li><a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>

                                </ul>

                            </c:if>

                            <c:if test="${sessionScope.user == null}"> 
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="login"><i class="fas fa-user-circle"></i> Log In</a></li>

                                </ul>

                            </c:if>



                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>About us <i
                                    class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">About Us</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-about">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                         style="background-image: url(images/about.jpg);">
                    </div>
                    <div class="col-md-6 wrap-about ftco-animate">
                        <div class="heading-section heading-section-white pl-md-5">
                            <span class="subheading">About us</span>
                            <h2 class="mb-4">Welcome to Carbook</h2>

                            <p>Welcome to CARBOOK, your premier destination for hassle-free car rentals. 
                                Whether you're planning a weekend getaway, a business trip, or need a reliable vehicle for daily use, CARBOOK offers a wide range of high-quality cars to meet your needs. Our user-friendly website allows you to browse our extensive fleet, compare prices, and book your perfect ride in just a few clicks. With competitive rates, flexible rental options, and exceptional customer service, we strive to make your car rental experience as smooth and enjoyable as possible. Discover the freedom of the open road with CARBOOK today!</p>

                            <p><a href="car.jsp" class="btn btn-primary py-3 px-4">Search Vehicle</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <span class="subheading">Services</span>
                        <h2 class="mb-3">Our Latest Services</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Wedding Ceremony</h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">City Transfer</h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Airport Transfer</h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Whole City Tour</h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-intro" style="background-image: url(images/bg_3.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-md-6 heading-section heading-section-white ftco-animate">
                        <h2 class="mb-3">Do You Want To Earn With Us? So Don't Be Late.</h2>
                        <a href="#" class="btn btn-primary btn-lg">Become An Employee</a>
                    </div>
                </div>
            </div>
        </section>


       

        <section class="ftco-counter ftco-section img" id="section-counter">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text text-border d-flex align-items-center">
                                <strong class="number" data-number="60">0</strong>
                                <span>Year <br>Experienced</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text text-border d-flex align-items-center">
                                <strong class="number" data-number="1090">0</strong>
                                <span>Total <br>Cars</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text text-border d-flex align-items-center">
                                <strong class="number" data-number="2590">0</strong>
                                <span>Happy <br>Customers</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text d-flex align-items-center">
                                <strong class="number" data-number="67">0</strong>
                                <span>Total <br>Branches</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

       <jsp:include page="footer.jsp"></jsp:include>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00" />
            </svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>

</html>