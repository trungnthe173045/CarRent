
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background: #eee;
                margin-top: 20px;
            }
            .text-danger strong {
                color: #9f181c;
            }
            .receipt-main {
                background: #ffffff none repeat scroll 0 0;
                border-bottom: 12px solid #333333;
                border-top: 12px solid #9f181c;
                margin-top: 50px;
                margin-bottom: 50px;
                padding: 40px 30px !important;
                position: relative;
                box-shadow: 0 1px 21px #acacac;
                color: #333333;
              
            }
            .receipt-main p {
                color: #333333;
                line-height: 1.42857;
            }
            .receipt-footer h1 {
                font-size: 15px;
                font-weight: 400 !important;
                margin: 0 !important;
            }
            .receipt-main::after {
                background: #414143 none repeat scroll 0 0;
                content: "";
                height: 5px;
                left: 0;
                position: absolute;
                right: 0;
                top: -13px;
            }
            .receipt-main thead {
                background: #414143 none repeat scroll 0 0;
            }
            .receipt-main thead th {
                color: #fff;
            }
            .receipt-right h5 {
                font-size: 16px;
                font-weight: bold;
                margin: 0 0 7px 0;
            }
            .receipt-right p {
                font-size: 12px;
                margin: 0px;
            }
            .receipt-right p i {
                text-align: center;
                width: 18px;
            }
            .receipt-main td {
                padding: 15px 20px !important;
            }
            .receipt-main th {
                padding: 15px 20px !important;
            }
            .receipt-main td {
                font-size: 15px;
                font-weight: initial !important;
            }
            .receipt-main td p:last-child {
                margin: 0;
                padding: 0;
            }
            .receipt-main td h2 {
                font-size: 20px;
                font-weight: 900;
                margin: 0;
                text-transform: uppercase;
            }
            .receipt-header-mid .receipt-left h1 {
                font-weight: 100;
                margin: 34px 0 0;
                text-align: right;
                text-transform: uppercase;
            }
            .receipt-header-mid {
                margin: 24px 0;
                overflow: hidden;
            }
            #container {
                background-color: #dcdcdc;
            }
           
            

        </style>
    </head>
    <body>
                            <c:set var="od" value="${requestScope.listOd}"/>

        <div class="container">
            <div class="row justify-content-center">
                <div class="receipt-main col-md-8">
                    <div class="row">
                        <div class="receipt-header w-100 d-flex justify-content-between align-items-center">
                            <div class="receipt-left">
                                <img class="img-responsive" alt="avatar" src="${od.order.user.image}" style="width: 71px; border-radius: 43px;">
                            </div>
                            <div class="receipt-right text-left">
                                <h5>CARBOOK</h5>
                                <p><b>Mobile :</b>+84 39996589 <i class="fas fa-phone"></i></p>
                                <p><b>Email :</b>company@fpt.edu.vn <i class=" fas fa-solid fa-envelope"></i></p>
                                <p><b>Address :</b>Hoa Lac,Ha Noi <i class="fas fa-location-arrow"></i></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="receipt-header receipt-header-mid">
                            <div class="col-md-8 text-left">
                                <div class="receipt-right">
                                    <h5>${od.order.user.name} </h5>
                                    <p><b>Mobile :</b> 0${od.order.user.phone}</p>
                                    <p><b>Email :</b> ${od.order.user.email}</p>
                                    <p><b>Address :</b> ${od.order.user.address}</p>
                                </div>
                            </div>
                            <br>
                            <div class="col-md-4">
                                <div class="receipt-left">
                                    <h4>ORDER ID: ${od.order_detail_id}</h4>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <table class="table table-bordered">
                            <thead>
                                <tr >
                                    <td style="font-size: 24px">Description</td>
                                    <td style="font-size: 24px">Information</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-md-7"><strong>OrderID</strong></td>
                                    <td class="col-md-5"><span></span>${od.order_detail_id}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>CustomerID</strong></td>
                                    <td class="col-md-5"> <span></span>${od.order.user.id}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>CarID</strong></td>
                                    <td class="col-md-5"><span></span>${od.car.id}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Car Name</strong></td>
                                    <td class="col-md-5">${od.car.name}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Car Brand</strong></td>
                                    <td class="col-md-5">${od.car.brand}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Number Of Seat</strong></td>
                                    <td class="col-md-5">${od.car.number_of_seat}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Pick Up Location</strong></td>
                                    <td class="col-md-5"> ${od.order.pick_up_location}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Pick Up Date</strong></td>
                                    <td class="col-md-5">${od.order.pick_up_date}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Drop Off Location</strong></td>
                                    <td class="col-md-5">${od.order.drop_off_location}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Drop Off Date</strong></td>
                                    <td class="col-md-5">${od.order.drop_off_date}</td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Price Per Day</strong></td>
                                    <td class="col-md-5">${od.car.price}<span>$</span></td>
                                </tr>
                                
                                <tr>
                                    <td class="col-md-7"><strong>Quantity</strong></td>
                                    <td class="col-md-5">1<span>car</span></td>
                                </tr>
                                <tr>
                                    <td class="col-md-7"><strong>Rental Hours</strong></td>
                                    <td class="col-md-5">${od.order.rental_hours}<span>hours</span></td>
                                </tr>
                                
                                <tr>
                                    <td class="text-right"><h2><strong>Total Price: </strong></h2></td>
                                    <td class="text-left text-danger"><h2><strong> ${od.order.total_price}<span>$</span></strong></h2></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="row">
                        <div class="receipt-header receipt-header-mid receipt-footer">
                            <div class="col-md-10 text-left">
                                <div class="receipt-right">
                                    <h4><b>Date :</b> ${od.order.date_order}</h4>
                                    <h4 style="color: #1ab188">Thanks for order! Please wait for Manager to contact you again!</h4>
                                </div>
                            </div>
                            
                        </div><p class="d-flex mb-0 d-block"><a href="home" class="btn btn-light py-2 mr-1">Next Order</a></p>
                    </div>
                </div>    
            </div>
            
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>