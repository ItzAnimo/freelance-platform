<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - FreelanceHub</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
        }

        /* Navbar */
        .navbar {
            background-color: #333;
            color: white;
            padding: 15px;
        }

        .navbar h2 {
            margin: 0;
            display: inline;
        }

        .nav-links {
            float: right;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 14px;
        }

        /* Login Box */
        .login-container {
            width: 300px;
            margin: 100px auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #555;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }

        .footer-text {
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
        }

        .footer-text a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <div class="navbar">
        <h2>FreelanceHub</h2>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>

    <!-- Login Form -->
    <div class="login-container">
        <h2>Login</h2>

        <% 
            String error = request.getParameter("error");
            if ("1".equals(error)) {
        %>
            <div class="error">Invalid email or password</div>
        <% } %>

        <form action="..\login" method="post">
            <input type="text" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit" class="btn">Login</button>
        </form>

        <div class="footer-text">
            <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
    </div>
    <% int age =23;
    %>
    age=<%=age%>
</body>
</html>