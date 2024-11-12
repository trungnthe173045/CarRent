<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('images/image_4.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .login-container {
            background-color: #d29491;
            padding: 50px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn {
            display: block;
            width: 100%;
            height: 50px;
            border-radius: 25px;
            outline: none;
            border: none;
            background-image: linear-gradient(to right, #ff7e5f, #feb47b);
            background-size: 200%;
            font-size: 1.2rem;
            color: #fff;
            font-family: 'Poppins', sans-serif;
            text-transform: uppercase;
            margin: 1rem 0;
            cursor: pointer;
            transition: background-position 0.5s ease, transform 0.3s ease;
        }
        .btn:hover {
            background-position: right center; 
            transform: scale(1.05); 
        }
        .input-div {
            width: 100%;
            height: 50px;
            border-radius: 25px;
            outline: none;
            border: none;
            background: #fff;
            padding: 0.5rem 0.7rem;
            font-size: 1.2rem;
            color: #555;
            margin-bottom: 20px;
        }
        .input-div::placeholder {
            color: #888; /* Change placeholder color */
        }
        
        
    </style>
</head>
<body>
    <div class="login-container">
        <h1 style="text-align: center">Forget Password</h1>
        <form action="login.jsp">
            <input type="text" name="username" placeholder="Username" required class="input-div" value="${empty param.username ? "" : param.username}">
            <input type="text" name="phone" placeholder="Phone" required class="input-div" value="${empty param.phone ? "" : param.phone}">
            <input type="password" name="newpassword" placeholder="New password" class="input-div" value="${empty param.password ? "" : param.password}">
            <input type="password" name="password" placeholder="Re-New password" class="input-div" value="">
            <input type="submit" class="btn" value="Confirm">
        </form>
        <div style="color: red">
            <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
        </div>
    </div>
</body>
</html>
