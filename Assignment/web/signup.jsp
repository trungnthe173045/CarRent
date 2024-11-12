<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!<!-- Style || CSS -->>
        <style>
            body {
                font-family: 'Titillium Web', sans-serif;
                background-image: url('images/image_5.jpg'); /* Đường dẫn đến ảnh nền */
                background-size: cover;
                background-position: center;
                overflow-y: scroll;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            a {
                text-decoration: none;
                color: #1ab188;
                transition: .5s ease;
            }

            .form {
                background: rgba(19, 35, 47, 0.9);
                padding: 40px;
                max-width: 600px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: center;
                width: 100%;
                box-sizing: border-box;
            }

            .tab-group {
                list-style-type: none;
                padding: 0;
                margin: 0;
                display: flex;
                justify-content: center;
            }

            .tab {
                margin-right: 10px;
            }

            .tab a {
                padding: 10px 15px;
                background-color: #13232f;
                color: #fff;
                border-radius: 5px 5px 0 0;
                transition: background-color 0.3s;
            }

            .tab a:hover {
                background-color: #1ab188;
            }

            .tab.active a {
                background-color: #1ab188;
            }

            .tab-content > div {
                display: none;
                padding: 20px 0;
                text-align: left;
            }

            .tab-content > div.active {
                display: block;
            }

            .field-wrap {
                position: relative;
                margin-bottom: 20px;
            }

            .input-div {
                width: calc(100% - 30px); /* Adjusted for padding */
                height: 50px;
                border: 1px solid #ccc;
                border-radius: 25px;
                outline: none;
                padding: 0 15px;
                font-size: 1rem;
                color: #555;
                box-sizing: border-box; /* Ensure padding is included in width */
            }

            .button {
                display: block;
                width: calc(100% - 30px); /* Adjusted for padding */
                height: 50px;
                border-radius: 25px;
                outline: none;
                border: none;
                background-image: linear-gradient(to right, #32be8f, #38d39f, #32be8f);
                background-size: 200%;
                font-size: 1.2rem;
                color: #fff;
                font-family: 'Poppins', sans-serif;
                text-transform: uppercase;
                margin: 1rem 0;
                cursor: pointer;
                transition: .5s;
                box-sizing: border-box; /* Ensure padding is included in width */
            }

            .button:hover {
                background-position: right;
            }

            .req {
                color: #1ab188;
            }

            .forgot {
                color: #1ab188;
                margin-top: -15px;
                text-align: right;
            }

            .forgot a {
                color: #1ab188;
                text-decoration: none;
            }

        </style>
    </head>
    <body>



            <%
                
            String error = (String) request.getAttribute("error");
            
            %>

    <div class="form" style="margin-top:100px">
        <ul class="tab-group" >
            <li class="tab "><a href="login.jsp">Log In</a></li>
            <li class="tab active"><a href="signup.jsp">Sign Up</a></li>
        </ul>
        <div class="tab-content">
            <div id="signup" class="active" >
                <h1 style="color:white">Sign Up for Free</h1>
                <form action="signup" method="post">
                    <div class="field-wrap">
                        <label style="color:white">Name<span class="req">*</span></label>
                        <input type="text" name="name" required autocomplete="off" class="input-div" value="${empty param.name ? "" : param.name}">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Phone<span class="req">*</span></label>
                        <input type="text" name="phone" required autocomplete="off" class="input-div" value="${empty param.phone ? "" : param.phone}">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Address<span class="req">*</span></label>
                        <input type="text" name="address" required autocomplete="off" class="input-div" value="${empty param.address ? "" : param.address}">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Email<span class="req">*</span></label>
                        <input type="email" name="email" required autocomplete="off" class="input-div" value="${empty param.email ? "" : param.email}">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Username<span class="req">*</span></label>
                        <input type="text" name="username" required autocomplete="off" class="input-div" value="${empty param.username ? "" : param.username}">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Set password<span class="req">*</span></label>
                        <input type="password" name="password" required autocomplete="off" class="input-div">
                    </div>
                    <div class="field-wrap">
                        <label style="color:white">Re-enter password<span class="req">*</span></label>
                        <input type="password" name="repassword" required autocomplete="off" class="input-div">
                    </div>
                        <h3 style="color: red"> <%=(error != null) ? error : ""%> </h3>
             
                    <button type="submit" class="button button-block" style="background-color: #007bff">Get Started</button>
                </form>
            </div>
        </div>
    </div>






</body>
</html>
