<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    
    <style>
        
        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type="number"] {
            -moz-appearance: textfield;
        }
        
    </style>
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
                        <li class="nav-item "><a href="about.jsp" class="nav-link">About</a></li>

                        <li class="nav-item active"><a href="listCar" class="nav-link">Cars</a></li>

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



        <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="home.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Choose Your Car</h1>
                    </div>
                </div>
            </div>
        </section>



        <c:set value="${requestScope.listC}" var="listC"/>
        <c:set value="${requestScope.listSeat}" var="listS"/>
        <c:set value="${requestScope.listRating}" var="listR"/>


        <section class="ftco-section bg-light">

            <div class="container">

                <!-- filter -->

                <form id="f1" action="listCar">

                    <span style="margin: 2px;" >        

                        <div style="display: flex; align-items: center;">

                            <label for="filter"><b>Number Of Seats:</b></label>
                          
                            <!-- number of seat -->
                            <select id="dropdown" name="filter" class="form-select" style="width:10% ;margin: 5px" onchange="document.getElementById('f1').submit()" >
                                <option value="0">All</option>

                                <c:forEach var="c" begin="0" end="${listS.size() -1}" step ="1">
                                    <option value="${listS.get(c)}" ${(listS.get(c) == param.filter) ? "selected" : ""} >${listS.get(c)}</option>
                                </c:forEach>

                            </select>
                            
                            <!-- rating -->

                            <label for="rating"><b>Rating:</b></label>
                            <select id="dropdown" name="rating" class="form-select" style="width:10% ;margin: 5px" onchange="document.getElementById('f1').submit()" >
                                <option value="0">All</option>

                                <c:forEach var="c" begin="0" end="${listR.size() -1}" step ="1">
                                    <option value="${listR.get(c)}" ${(listR.get(c) == param.rating) ? "selected" : ""} >${listR.get(c)}</option>
                                </c:forEach>

                            </select>

                        </div>

                    </span>



                    <span style="margin: 2px;" >        
                                                    <!-- search -->

                        <label for="filter"><b>Search:</b></label>

                        <input name="search" type="text" class="form-control" placeholder="Name,Brand,Model" value="${param.search == null ? "":param.search}">

                        <div class="row" >
                                                        <!-- from price -->

                            <div class="col-md-6">
                                <label for="filter"><b>From Price:</b></label>
                                <input name="fromprice" type="number" class="form-control" placeholder="From Price" value="${param.fromprice == null ? "":param.fromprice}">
                            </div>
                                                     <!-- to price -->

                            <div class="col-md-6">
                                <label for="filter"><b>To Price:</b></label>
                                <input name="toprice" type="number" class="form-control" placeholder="To Price" value="${param.toprice == null ? "":param.toprice}">
                            </div>  


                        </div>


                    </span>
                    <span style="display: none"><input type="submit" ></span>

                </form>


                <!-- End filter -->



                <!-- list o to -->


                <div class="row">

                    <!-- --------------------------------------------------------------------- -->
                    <c:forEach items="${requestScope.listC}" var="c">


                        <div class="col-md-4">
                            <div class="car-wrap rounded ftco-animate">
                                <div class="img rounded d-flex align-items-end" style="background-image: url(${c.image});">
                                </div>
                                <div class="text">
                                    <h2 class="mb-0"><a href="carSingle?id=${c.id}">${c.name}</a></h2>
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
                                    
                                    <p class="d-flex mb-0 d-block">
                                        <c:if test="${sessionScope.role =='Customer'}"><a href="userOrder?id=${c.id}" class="btn btn-primary py-2 mr-1 bookNowBtn"  >Book now</a> </c:if>
                                        <c:if test="${sessionScope.role == null}"><p class="d-flex mb-0 d-block"><a href="login" class="btn btn-primary py-2 mr-1 bookNowBtn">Book now</a> </c:if>
                                        <a href="carSingle?id=${c.id}" class="btn btn-secondary py-2 ml-1">Details</a></p>
                                </div>
                            </div>
                        </div>


                    </c:forEach>




                    <!-- --------------------------------------------------------------------- -->




                </div>




            </div>
        </section>
                            
                            
                            
                            


        <!-- About-->


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

        <!<!-- footer -->
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
        <script>
            
            
            
             $(document).on('click', '.bookNowBtn', function () {
                var tr = $(this).closest('tr');
                $('#car-id').val(tr.children('td:nth-child(1)').text());
                $('#userName').val(tr.children('td:nth-child(2)').text());
                $('#phone').val(tr.children('td:nth-child(3)').text().trim());
                $('#address').val(tr.children('td:nth-child(4)').text());
                $('#email').val(tr.children('td:nth-child(5)').text());




                $('#editModal').modal('show');

            });

            
            
            
            
                                $(document).ready(function () {
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