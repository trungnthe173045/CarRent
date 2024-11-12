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
        <c:set value="${requestScope.listC}" var="listC"/>

        <div  style="margin-top: 15px">
            <div class="row">
                <div class="col-12 mb-3 mb-lg-"> 
                    <div class="position-relative card table-nowrap table-card ">
                        <div style="margin-bottom: 5px">
                            <h1>CARS</h1>
                            <span style="background-color: #eeecfd; padding:5px;">TOTAL CARS: <b>${listC.size()}</b></span>
                        </div>
                        <div class="table-responsive">  
                            <table class="table mb-0">
                                <thead class="text-uppercase bg-body text-muted">
                                    <tr>
                                        <th>CAR ID</th>
                                        <th>CAR NAME</th>
                                        <th>IMAGE</th>
                                        <th>BRAND</th>
                                        <th>PRICE</th>
                                        <th>MODEL</th>
                                        <th>YEAR</th>
                                        <th>NUMBER OF SEAT</th>
                                        <th>PLATE NUMBER</th>
                                        <th>MILEAGE</th>
                                        <th>STATUS</th>
                                        <th>RATING</th>
                                        <th>DESCRIPTION</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>


                                    <c:forEach items="${requestScope.listC}" var="c">

                                        <tr class="align-content-between">
                                            <td>${c.id}</td>
                                            <td >${c.name}</td>
                                            <td>
                                                
                                             <img src="${c.image}" class="img-radius" alt="User-Profile-Image" width="40px" height="40px">

                                            </td>
                                            <td>${c.brand}</td>
                                            <td>${c.price}</td>
                                            <td>${c.model}</td>
                                            <td>${c.year}</td>
                                            <td>${c.number_of_seat}</td>
                                            <td>${c.plate_number}</td>
                                            <td>${c.mileage}</td>
                                            <td>${c.status}</td>
                                            <td>${c.rating}</td>

                                            <td>${c.description}</td>

                                            <td>
                                                
                                              <a href="#" onclick="doDelete('${c.id}')">  <button type="button" class="btn btn-danger " >X</button><a>
                                            </td>
                                        </tr>

                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <center> <a href="addCar"><input type="button" value="ADD NEW CAR"></a></center>

 




        <script>
            
              function doDelete(id) {

                if (confirm("Are you sure about that?")) {
                    window.location = "deleteCar?id=" + id;
                }
            }
            
            
            
            var currentStatus = '';

            $(document).on('click', '.edit-btn', function () {
                var tr = $(this).closest('tr');
                currentStatus = tr.children('td:nth-child(3)').find('span').text().trim();

                    // Add more fields as necessary
                    $('#editModal').modal('show');
                    
                    
            });


            $(document).ready(function () {
                $('#saveChangesBtn').on('click', function () {
                    var successAlert = document.getElementById('successAlert');
                    var alert = new bootstrap.Alert(successAlert);
                    successAlert.classList.add('show'); // Make the alert visible
                    successAlert.classList.add('fade');
                    // Optional: Hide the alert after a few seconds
                    setTimeout(function () {
                        successAlert.classList.add('fade');
                        successAlert.classList.remove('show');
                    }, 5000); // Hide after 5 seconds
                });

            });


            $('#saveChangesBtn').on('click', function () {
                if (currentStatus === 'Completed') {
                    alert('Completed transactions cannot be edited.');
                } else {
                    // Code to save changes
                    var dateOrder = $('#dateOrder').val();
                    var pickLocation = $('#pickLocation').val();
                    var dropLocation = $('#dropLocation').val();
                    var pickDate = $('#pickDate').val();
                    var dropDate = $('#dropDate').val();

                    // Update the table row with the new values
                    var tr = $('td').filter(function () {
                        return $(this).text() === dateOrder; // Adjust this logic as needed
                    }).closest('tr');

                    tr.children('td:nth-child(4)').text(dateOrder);
                    tr.children('td:nth-child(8)').text(pickLocation);
                    tr.children('td:nth-child(9)').text(dropLocation);
                    tr.children('td:nth-child(10)').text(pickDate);
                    tr.children('td:nth-child(11)').text(dropDate);

                    $('#editModal').modal('hide'); // Hide the modal
                }
            });

            $(document).on('click', '.delete-btn', function () {
                var tr = $(this).closest('tr');
                currentStatus = tr.children('td:nth-child(3)').find('span').text().trim();

                if (currentStatus === 'Pending') {
                    if (confirm('Are you sure you want to delete this pending order?')) {
                        tr.remove();
                    }
                } else {
                    alert('Only pending transactions can be deleted.');
                }
            });

            // Fallback click event for the close button
            $('.close').on('click', function () {
                $('#editModal').modal('hide'); // Hide the modal
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
