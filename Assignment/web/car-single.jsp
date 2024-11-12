<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="utf-8">
<html lang="en">
    <head>
        <title>Assigment team 3</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
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
        <link rel="stylesheet" href="css/carsinglecss.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

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

                        <li class="nav-item "><a href="home" class="nav-link">Home</a></li>
                        <li class="nav-item "><a href="about.jsp" class="nav-link">About</a></li>

                        <li class="nav-ite activem"><a href="listCar" class="nav-link">Cars</a></li>

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






                                    <li><a class="dropdown-item" href="transaction"><i class="fas fa-exchange-alt"></i> Transaction</a></li>
                                    <li><hr class="dropdown-divider"></li>
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

        <c:set var="c" value="${requestScope.carsingle}"/>
        <!-- Header -->
        <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" >
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="home.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="car.jsp">Car <i class="ion-ios-arrow-forward"></i></a></span><span>Car details <i class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Car Details</h1>
                    </div>
                </div>
            </div>
        </section>

        <!<!-- Body -->
        <section class="ftco-section ftco-car-details">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="car-details">
                            <div class="img rounded" style="background-image: url(${c.image});" ></div>
                            <div class="text text-center">
                                <span class="subheading">${c.brand}</span>
                                <h2>${c.name}</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row " style=" display: flex;
                     justify-content: space-between;">
                    <div class="col-12 col-md-2 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-car"></span></div>
                                    <div class="text">
                                        <h3 class="heading mb-0 pl-3">
                                            Rated
                                            <span>${c.rating} Star</span>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>      
                    </div>
                    <div class="col-12 col-md-2 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-suv"></span></div>
                                    <div class="text">
                                        <h3 class="heading mb-0 pl-3">
                                            Model
                                            <span>${c.model}</span>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>      
                    </div>
                    <div class="col-12 col-md-2 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-car-seat"></span></div>
                                    <div class="text">
                                        <h3 class="heading mb-0 pl-3">
                                            Seats
                                            <span>${c.number_of_seat} Adults</span>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>      
                    </div>
                    <div class="col-12 col-md-2 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-backpack"></span></div>
                                    <div class="text">
                                        <h3 class="heading mb-0 pl-3">
                                            Year
                                            <span>${c.year}</span>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>      
                    </div>
                    <div class="col-12 col-md-2 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-pistons"></span></div>
                                    <div class="text">
                                        <h3 class="heading mb-0 pl-3">
                                            STATUS
                                            <span>${c.status}</span>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>      
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12 pills">
                        <div class="bd-example bd-example-tabs">
                            <div class="d-flex justify-content-center">
                                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist" style="font-size: 20px">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="pills-price-tab" data-toggle="pill" href="#pills-price" role="tab" aria-controls="pills-price" aria-expanded="true">Pricing</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Description</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-detail-tab" data-toggle="pill" href="#pills-detail" role="tab" aria-controls="pills-detail" aria-expanded="true">Detail</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-price" role="tabpanel" aria-labelledby="pills-price-tab">
                                    <div class="table-container">
                                        <div>
                                            <table class="table ">
                                                <thead class="thead">
                                                    <tr class="text-center">
                                                        <th class="bg-primary">Per Hour Rate</th>
                                                        <th class="bg-dark">Per Day Rate</th>
                                                        <th class="bg-black">Leasing</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <h3>
                                                                    <span class="num"><small class="currency">$</small> ${c.price}</span>
                                                                    <span class="per">/per hour</span>
                                                                </h3>
                                                                <span class="subheading">$3/hour fuel surcharges</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <h3>
                                                                    <span class="num"><small class="currency">$</small> ${c.price*3}</span>
                                                                    <span class="per">/per day</span>
                                                                </h3>
                                                                <span class="subheading">$3/hour fuel surcharges</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <h3>
                                                                    <span class="num"><small class="currency">$</small> ${c.price*6}</span>
                                                                    <span class="per">/per month</span>
                                                                </h3>
                                                                <span class="subheading">$3/hour fuel surcharges</span>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane fade" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
                                    <p style="font-size: 18px">
                                    <center> <h2>${c.description}<h2> </center>
                                                <p>
                                                    </div>

                                                <div class="tab-pane fade" id="pills-detail" role="tabpanel" aria-labelledby="pills-detail-tab">
                                                    <div>
                                                        <div class="review d-flex">
                                                            <table class="detail">
                                                                <thead>
                                                                    <tr>
                                                                        <th>INFORMATION</th>
                                                                        <th>DETAIL</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>BRAND</td>
                                                                        <td><span>${c.brand}</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>YEAR</td>
                                                                        <td><span>${c.year}</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>NUMBER OF SEAT</td>
                                                                        <td><span>${c.number_of_seat}</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>MODEL</td>
                                                                        <td><span>${c.model}</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>PLATE NUMBER</td>
                                                                        <td><span>${c.plate_number}</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>MILEAGE</td>
                                                                        <td><span>${c.mileage}KM</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>STATUS</td>
                                                                        <td><span>${c.status}</span></td>
                                                                    </tr>
                                                                    <tr>  

                                                                        <td>RATED</td>
                                                                        <td>




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



                                                                        </td> 

                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                                    
                                                <c:if test="${sessionScope.role =='Customer'}">  <p class="d-flex mb-0 d-block" style="justify-content: center;"><a href="userOrder?id=${c.id}" class="btn btn-secondary py-2 mr-1 bookNowBtn" style="font-size: 24px" >Book now</a></p>
                                                </c:if>
                                                                                    <c:if test="${sessionScope.role ==null}">  <p class="d-flex mb-0 d-block" style="justify-content: center;"><a href="login" class="btn btn-secondary py-2 mr-1 bookNowBtn" style="font-size: 24px" >Book now</a></p>
                                                </c:if>
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
                                                <script src="js/google-map.js"></script>
                                                <script src="js/main.js"></script>
                                                <script>
                                                                        document.addEventListener('DOMContentLoaded', function () {
                                                                            const toggleLink = document.getElementById('toggle-detail');
                                                                            const detailTab = document.getElementById('pills-Detail');

                                                                            toggleLink.addEventListener('click', function (event) {
                                                                                event.preventDefault();
                                                                                if (detailTab.classList.contains('show')) {
                                                                                    detailTab.classList.remove('show', 'active');
                                                                                    toggleLink.scrollIntoView({behavior: 'smooth', block: 'start'});
                                                                                } else {
                                                                                    detailTab.classList.add('show', 'active');
                                                                                }
                                                                            });
                                                                        });
                                                                        document.addEventListener('DOMContentLoaded', function () {
                                                                            const toggleLink = document.getElementById('toggle-description');
                                                                            const descriptionTab = document.getElementById('pills-manufacturer');

                                                                            toggleLink.addEventListener('click', function (event) {
                                                                                event.preventDefault();
                                                                                if (descriptionTab.classList.contains('show')) {
                                                                                    descriptionTab.classList.remove('show', 'active');
                                                                                    toggleLink.scrollIntoView({behavior: 'smooth', block: 'start'});
                                                                                } else {
                                                                                    descriptionTab.classList.add('show', 'active');
                                                                                }
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

                                                                        function confirmRental() {
                                                                            return confirm('Are you sure you want to rent this car?');
                                                                        }


                                                </script>
                                                <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
                                                </body>
                                                </html>