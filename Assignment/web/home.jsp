<%-- 
    Document   : home
    Created on : Jun 27, 2024, 8:09:23 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Carbook</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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

                        <li class="nav-item active"><a href="home" class="nav-link">Home</a></li>
                        <li class="nav-item "><a href="about.jsp" class="nav-link">About</a></li>

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

        <div class="hero-wrap ftco-degree-bg" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
                    <div class="col-lg-8 ftco-animate">
                        <div class="text w-100 text-center mb-md-5 pb-md-5">
                            <h1 class="mb-4">Fast &amp; Easy Way To Rent A Car</h1>
                            <p style="font-size: 18px;">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts</p>
                            <a href="https://www.youtube.com/watch?v=OrDB4jpA1g8" class="icon-wrap popup-vimeo d-flex align-items-center mt-4 justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="ion-ios-play"></span>
                                </div>
                                <div class="heading-title ml-5">
                                    <span>Easy steps for renting a car</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section ftco-no-pt bg-light">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-12	featured-top">
                        <div class="row no-gutters">
                            <div class="col-md-4 d-flex align-items-center">
                                <form action="listCar" class="request-form ftco-animate bg-primary">
                                    <h2>Make your trip</h2>

                                    <div class="form-group mb-3">
                                        <label for="form" class="label">Pick-up location</label>
                                        <input type="text" class="form-control" placeholder="City, Airport, Station, etc">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="form" class="label">Drop-off location</label>
                                        <input type="text" class="form-control" placeholder="City, Airport, Station, etc">
                                    </div>
                                    <div class="d-flex">
                                        <div class="form-group mr-2">
                                            <label for="form" class="label">Pick-up date</label>
                                            <input type="text" class="form-control" id="book_pick_date" placeholder="Date">
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="form" class="label">Pick-up time</label>
                                            <input type="text" class="form-control" id="timepick" placeholder="Time">
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="form-group mr-2">
                                            <label for="form" class="label">Drop-off date</label>
                                            <input type="text" class="form-control" id="book_off_date" placeholder="Date">
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="form" class="label">Drop-off time</label>
                                            <input type="text" class="form-control" id="timeoff" placeholder="Time">
                                        </div>

                                    </div><div class="form-group mb-3">
                                        <input type="submit" value="Rent A Car Now" class="btn btn-secondary py-3 px-4">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-8 d-flex align-items-center">
                                <div class="services-wrap rounded-right w-100">
                                    <h3 class="heading-section mb-4">Better Way to Rent Your Perfect Cars</h3>
                                    <div class="row d-flex mb-4">
                                        <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                            <div class="services w-100 text-center">
                                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                                                <div class="text w-100">
                                                    <h3 class="heading mb-2">Choose Your Pickup Location</h3>
                                                </div>
                                            </div>      
                                        </div>
                                        <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                            <div class="services w-100 text-center">
                                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-handshake"></span></div>
                                                <div class="text w-100">
                                                    <h3 class="heading mb-2">Select the Best Deal</h3>
                                                </div>
                                            </div>      
                                        </div>
                                        <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                            <div class="services w-100 text-center">
                                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-rent"></span></div>
                                                <div class="text w-100">
                                                    <h3 class="heading mb-2">Reserve Your Rental Car</h3>
                                                </div>
                                            </div>      
                                        </div>
                                    </div>
                                    <p><a href="listCar" class="btn btn-primary py-3 px-4">Reserve Your Perfect Car</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>


        <section class="ftco-section ftco-no-pt bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                        <span class="subheading">What we offer</span>
                        <h2 class="mb-2">Featured Vehicles</h2>
                    </div>
                </div>
                <c:set value="${requestScope.listC}" var="listC"></c:set>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="carousel-car owl-carousel">

                            <c:forEach items="${requestScope.listC}" var="c" > 
                                <div class="item">
                                    <div class="car-wrap rounded ftco-animate">
                                        <div class="img rounded d-flex align-items-end" style="background-image: url(${c.image});">
                                        </div>
                                        <div class="text">
                                            <h2 class="mb-0"><a href="#">${c.name}</a></h2>
                                            <div class="d-flex mb-3">
                                                <span class="cat">${c.brand}</span>
                                                <p class="price ml-auto">$${c.price} <span>/day</span></p>
                                            </div>
                                            <p>
                                                <span>Rated:</span>
                                                <c:choose>

                                                    <c:when test="${c.rating == 1}">

                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>

                                                    </c:when>
                                                    <c:when test="${c.rating == 2}"> 

                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>

                                                    </c:when>

                                                    <c:when test="${c.rating == 3}">

                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star"></span>
                                                        <span class="ion-ios-star"></span>

                                                    </c:when>

                                                    <c:when test="${c.rating == 4}">
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star"></span>
                                                    </c:when>

                                                    <c:when test="${c.rating == 5}">

                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>
                                                        <span class="ion-ios-star-outline"></span>


                                                    </c:when>


                                                </c:choose>

                                            </p>
                                            <c:if test="${sessionScope.role == 'Customer' }"><p class="d-flex mb-0 d-block"><a href="userOrder?id=${c.id}" class="btn btn-primary py-2 mr-1 bookNowBtn">Book now</a> </c:if>
                                            <c:if test="${sessionScope.role == null}"><p class="d-flex mb-0 d-block"><a href="login" class="btn btn-primary py-2 mr-1 bookNowBtn">Book now</a> </c:if>


                                                    <a href="car-single.jsp" class="btn btn-secondary py-2 ml-1">Details</a></p>
                                            </div>
                                        </div>
                                    </div>


                            </c:forEach>



                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="modal fade" id="bookingModal" tabindex="-1" aria-labelledby="bookingModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="bookingModalLabel" style="text-align: center">Book Your Car</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="invoice.jsp" id="invoiceform">
                        <div class="modal-body">
                            <div class="form-group mb-3">
                                <label for="car-name">Car:</label>
                                <input type="text" id="car-name" name="car-name" class="form-control" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="carID">carID:</label>
                                <input type="text" id="carID" name="carID" class="form-control" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="price">Price:</label>
                                <input type="text" id="price" name="price" class="form-control" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="form" class="label">Pick-up location</label>
                                <input type="text" class="form-control" placeholder="City, Airport, Station, etc">
                            </div>
                            <div class="form-group mb-3">
                                <label for="form" class="label">Drop-off location</label>
                                <input type="text" class="form-control" placeholder="City, Airport, Station, etc">
                            </div>
                            <div class="d-flex">
                                <div class="form-group mr-2">
                                    <label for="form" class="label">Pick-up date</label>
                                    <input type="text" class="form-control" id="book_pick_date" placeholder="Date">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="form" class="label">Pick-up time</label>
                                    <input type="text" class="form-control" id="timepick" placeholder="Time">
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="form-group mr-2">
                                    <label for="form" class="label">Drop-off date</label>
                                    <input type="text" class="form-control" id="book_off_date" placeholder="Date">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="form" class="label">Drop-off time</label>
                                    <input type="text" class="form-control" id="timeoff" placeholder="Time">
                                </div>

                            </div>

                        </div>

                        <div class="modal-footer" >
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" onclick="return confirmRental()" >Rent now</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <section class="ftco-section ftco-about">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/about.jpg);">
                    </div>
                    <div class="col-md-6 wrap-about ftco-animate">
                        <div class="heading-section heading-section-white pl-md-5">
                            <span class="subheading">About us</span>
                            <h2 class="mb-4">Welcome to Carbook</h2>

                            <p>Welcome to CARBOOK, your premier destination for hassle-free car rentals. 
                                Whether you're planning a weekend getaway, a business trip, or need a reliable vehicle for daily use, CARBOOK offers a wide range of high-quality cars to meet your needs. Our user-friendly website allows you to browse our extensive fleet, compare prices, and book your perfect ride in just a few clicks. With competitive rates, flexible rental options, and exceptional customer service, we strive to make your car rental experience as smooth and enjoyable as possible. Discover the freedom of the open road with CARBOOK today!</p>
                            <p><a href="listCar" class="btn btn-primary py-3 px-4">Search Vehicle</a></p>
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
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-wedding-car"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Wedding Ceremony</h3>
                                <p>Our wedding car rental service offers luxurious and elegant vehicles to make your special day unforgettable.</p>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-transportation"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">City Transfer</h3>
                                <p>Our city transfer car rental service provides comfortable and reliable transportation for your urban journeys. </p>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-car"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Airport Transfer</h3>
                                <p>Our transport transfer car rental service offers seamless and efficient transportation solutions for your logistical needs.</p>                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="services services-2 w-100 text-center">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-transportation"></span></div>
                            <div class="text w-100">
                                <h3 class="heading mb-2">Whole City Tour</h3>
                                <p>Discover the city at your own pace with our whole city tour car rental service.</p>                            </div>
                        </div>
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
                                <strong class="number" data-number="1">0</strong>
                                <span>Year <br>Experienced</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text text-border d-flex align-items-center">
                                <strong class="number" data-number="${listC.size()}">0</strong>
                                <span>Total <br>Cars</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text text-border d-flex align-items-center">
                                <strong class="number" data-number="5">0</strong>
                                <span>Happy <br>Customers</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>



        <jsp:include page="footer.jsp"></jsp:include>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script> $(document).ready(function () {
                                    $('#timepick').timepicker({
                                        controls: ['time'],
                                        timeFormat: 'H:i',
                                        interval: 30,
                                        minTime: '08:00',
                                        maxTime: '22:00',
                                        defaultTime: '08:00',
                                        dynamic: false,
                                        dropdown: true,
                                        scrollbar: true
                                    });

                                    $('#timeoff').timepicker({
                                        controls: ['time'],
                                        timeFormat: 'H:i',
                                        interval: 30,
                                        minTime: '08:00',
                                        maxTime: '22:00',
                                        defaultTime: '08:00',
                                        dynamic: false,
                                        dropdown: true,
                                        scrollbar: true
                                    });
                                });

                                document.addEventListener('DOMContentLoaded', function () {
                                    const bookNowBtns = document.querySelectorAll('.bookNowBtn');

                                    bookNowBtns.forEach(btn => {
                                        btn.addEventListener('click', function () {
                                            const carName = this.getAttribute('data-car');
                                            const carID = this.getAttribute('data-carID');
                                            const price = this.getAttribute('data-price');

                                            document.getElementById('car-name').value = carName;
                                            document.getElementById('carID').value = carID;
                                            document.getElementById('price').value = price;
                                        });
                                    });
                                });
                                function confirmRental() {
                                    return confirm('Are you sure you want to rent this car?');
                                }
        </script>
    </body>
</html>
