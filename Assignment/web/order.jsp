<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
        <style>
            body {
                margin-top: 20px;
                background: #eeecfd;
            }

            .card {
                box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
                padding: 20px; /* Thêm padding ?? n?i dung không ch?m vào c?nh c?a card */
            }

            .avatar.sm {
                width: 2.25rem;
                height: 2.25rem;
                font-size: .818125rem;
            }

            .table-nowrap .table td,
            .table-nowrap .table th {
                white-space: nowrap;
            }

            .table>:not(caption)>*>* {
                padding: 0.75rem 1.25rem;
                border-bottom-width: 1px;
            }

            table th {
                font-weight: 600;
                background-color: #eeecfd !important;
            }

            .fa-arrow-up {
                color: #00CED1;
            }

            .fa-arrow-down {
                color: #FF00FF;
            }

            .centered-table-wrapper {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }


            th, td {
                border: 1px solid #dee2e6; /* ???ng vi?n gi?a các ô */
                text-align: center;
                margin-left: 5px; /* Áp d?ng margin-left cho các ô */

            }





            tbody td {

                margin-left: 5px; /* Kho?ng cách gi?a các ô trong cùng m?t hàng */
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
            }


        </style>
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
        <div  style="margin-top: 15px">
            <div class="row">
                <div class="col-12 mb-3 mb-lg-"> 
                    <div class="position-relative card table-nowrap table-card ">
                        <div style="margin-bottom: 5px">
                            <h1>ORDERS</h1>
                            <span style="background-color: #eeecfd; padding:5px;">TOTAL ORDERS: <b>${requestScope.listOd.size()}</b></span>
                        </div>
                        <div class="table-responsive">  
                            <table class="table mb-0">
                                <thead class="text-uppercase bg-body text-muted">
                                    <tr>
                                        <th>Order ID</th>
                                        <th>User ID</th>
                                        <th>User Name</th>
                                        <th>Status</th>
                                        <th>Date Order</th>
                                        <th>Car ID</th>
                                        <th>Car Name</th>
                                        <th>Pick Up Location</th>
                                        <th>Drop Off Location</th>

                                        <th>Pick Up Date</th>
                                        <th>Drop Off Date</th>
                                        <th>Pick Up Time</th>
                                        <th>Drop Off Time</th>
                                        <th>Rental Hours</th>
                                        <th>Total Price</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="od" items="${requestScope.listOd}">
                                        <tr class="align-content-between">
                                            <td>${od.order.id}</td>
                                            <td>${od.order.user.id}</td>
                                            <td>${od.order.user.name}</td>

                                            <c:if test="${od.order.order_status == 'Pending'}">

                                                <td style="color:yellow">${od.order.order_status}</td>


                                            </c:if>

                                            <c:if test="${od.order.order_status == 'Refuse'}">

                                                <td style="color:red">${od.order.order_status}</td>


                                            </c:if>
                                            <c:if test="${od.order.order_status == 'Completed'}">

                                                <td style="color:green">${od.order.order_status}</td>


                                            </c:if>

                                            <td>${od.order.date_order}</td>
                                            <td>${od.car.id}</td>
                                            <td>${od.car.name}</td>
                                            <td>${od.order.pick_up_location}</td>
                                            <td>${od.order.drop_off_location}</td>
                                            <td>${od.order.pick_up_date}</td>
                                            <td>${od.order.drop_off_date}</td>
                                            <td>${od.order.pick_up_time}</td>
                                            <td>${od.order.drop_off_time}</td>
                                            <td>${od.order.rental_hours}</td>
                                            <td>${od.car.price*od.order.rental_hours} $</td>





                                        </tr>

                                    </c:forEach>



                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script>



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
        </script>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <jsp:include page="footer.jsp"></jsp:include>
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
