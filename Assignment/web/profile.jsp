<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="stylesheet" href="css/styleprofile.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
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
        <style>
            body {
                background-image: url('images/image_1.jpg'); /* Đường dẫn đến ảnh nền */
                background-size: cover;
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                font-family: Arial, sans-serif;

            }

            .padding {
                padding: 3rem !important;
            }

            .user-profile {
                padding: 30px;
                text-align: center;
            }

            .card-block {
                padding: 30px;
            }

            .form-control {
                width: 100%;
                height: 50px;
                font-size: 16px;
            }
            .rounded-form {
                background: rgba(19, 35, 47, 0.9);
                padding: 40px;
                max-width: 600px;
                border-radius: 15px; /* This property rounds the corners */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: center;
                width: 100%;
                box-sizing: border-box;
                margin: auto;
                margin-top: 100px;
            }

            .field-wrap {
                position: relative;
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
                            <a class="nav-link dropdown-toggle active" id="navbarDropdown" role="button" data-bs-toggle="dropdown">Profile
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

        <c:set var="pf" value="${requestScope.pf}"/>
        <div class="page-content page-container" id="page-content" style="margin-top: 100px; border-radius: 50%;">
            <div class="padding">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-md-12">
                        <div class="card user-card-full">
                            <div class="row m-l-0 m-r-0">
                                <div class="col-sm-4 bg-info user-profile">
                                    <div class="card-block text-center text-white user-profile">
                                        <div class="m-b-25">
                                            <img src="${pf.image}" class="img-radius" alt="User-Profile-Image" width="220px" height="220px">
                                        </div>
                                        <h6 class="f-w-600">${pf.name}</h6>
                                        <p>${pf.role}</p>
                                        <button type="button" class="btn btn-light" data-toggle="modal" data-target="#editModal">Edit</button>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="card-block">
                                        <h4 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h4>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h4 class="m-b-10 f-w-600">Name</h4>
                                                <input type="text" class="form-control" id="name" value="${pf.name}" readonly>
                                            </div>
                                            <div class="col-sm-6">
                                                <h4 class="m-b-10 f-w-600">Phone</h4>
                                                <input type="text" class="form-control" id="phone" value="0${pf.phone}" readonly>
                                            </div>
                                        </div>
                                        <h4 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600"></h4>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h4 class="m-b-10 f-w-600">Address</h4>
                                                <input type="text" class="form-control" id="address" value="${pf.address}" readonly>
                                            </div>
                                            <div class="col-sm-6">
                                                <h4 class="m-b-10 f-w-600">Email</h4>
                                                <input type="text" class="form-control" id="email" value="${pf.email}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="d-flex mb-0 d-block"><a href="home" class="btn btn-info py-2 mr-1">HOME</a></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap Modal -->
        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Edit Profile</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">



                        <!-- ----------------------------------------------------------------------------------- --> 

                        <form action="editProfile" id="editProfileForm">
                            <input type="hidden" class="form-control" name="id" id="modalName" value="${pf.id}">

                            <div class="form-group">
                                <label for="modalName">Name</label>
                                <input type="text" class="form-control" name="name" id="modalName" value="${pf.name}">
                            </div>
                            <div class="form-group">
                                <label for="modalPhone">Phone</label>
                                <input type="text" class="form-control" name="phone" id="modalPhone" value="0${pf.phone}">
                            </div>
                            <div class="form-group">
                                <label for="modalAddress">Address</label>
                                <input type="text" class="form-control" name="address" id="modalAddress" value="${pf.address}">
                            </div>
                            <div class="form-group">
                                <label for="modalEmail">Email</label>
                                <input type="text" class="form-control" name="email" id="modalEmail" value="${pf.email}">
                            </div>
                            <div class="form-group">
                                <label for="oldPassword">Old Password</label>
                                <input type="password" class="form-control" name="oldPassword" id="oldPassword">
                            </div>
                            <div class="form-group">
                                <label for="newPassword">New Password</label>
                                <input type="password" class="form-control" name="newPassword" id="newPassword">
                            </div>
                            <div class="form-group">
                                <label for="confirmPassword">Confirm New Password</label>
                                <input type="password" class="form-control" name="confirmPassword" id="confirmPassword">
                            </div>
                            <div id="errorMessage" class="alert alert-danger d-none"></div>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </form>

                        <!-- ----------------------------------------------------------------------------------- --> 

                    </div>
                </div>
            </div>
        </div>

    </body>
    <footer class="ftco-footer  ftco-section" style="background-color:#17a2b8 ">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2"><a href="home.jsp" class="logo">Car<span>book</span></a></h2>
                        <p>Unlock the Freedom of the Open Road – Reliable Rentals, Unbeatable Service, Every Mile of the Way!</p>                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                            <li class="ftco-animate"><a href="#"><span class="icon-telegram"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-5">
                        <h2 class="ftco-heading-2">Information</h2>
                        <ul class="list-unstyled">
                            <li><a href="about.jsp" class="py-2 d-block">About</a></li>
                            <li><a href="service.jsp" class="py-2 d-block">Services</a></li>


                            <li><a href="car.jsp" class="py-2 d-block">Best Price Guarantee</a></li>
                            <li><a href="contact.jsp" class="py-2 d-block">Contact Us</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">FPT University Hanoi, Hoa Lac High-Tech Park, km 29, Thang Long Avenue, Hanoi</span></li>
                                <li><span class="icon icon-phone"></span><span class="text">+84 999 999 999</span></li>
                                <li><span class="icon icon-envelope"></span><span class="text">info@fpt.edu.vn</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">

                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | The project is project implemented <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="home.jsp" target="_blank">Group 3</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
                            $(document).ready(function () {
                                $('#editProfileForm').on('submit', function (event) {
                                    event.preventDefault();

                                    var oldPassword = $('#oldPassword').val();
                                    var newPassword = $('#newPassword').val();
                                    var confirmPassword = $('#confirmPassword').val();
                                    var currentPassword = "${pf.password}"; // lay tu database

                                    if (oldPassword !== currentPassword) {
                                        $('#errorMessage').text('Old password is incorrect.').removeClass('d-none');
                                        return;
                                    }

                                    if (newPassword !== confirmPassword) {
                                        $('#errorMessage').text('New passwords do not match.').removeClass('d-none');
                                        return;
                                    }

                                    $('#editProfileForm')[0].submit();
                                });
                            });
    </script>
</html>
