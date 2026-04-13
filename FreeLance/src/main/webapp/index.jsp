<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Freelancing Platform</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
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

        .nav-links a:hover {
            text-decoration: underline;
        }

        /* Main Section */
        .container {
            text-align: center;
            margin-top: 100px;
        }

        .container h1 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .container p {
            font-size: 18px;
            color: #555;
        }

        /* Buttons */
        .btn {
            display: inline-block;
            margin: 15px;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .btn:hover {
            background-color: #555;
        }

        /* Footer */
        .footer {
            margin-top: 150px;
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: white;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <div class="navbar">
        <h2>FreelanceHub</h2>
        <div class="nav-links">
            <a href="jsp/login.jsp">Login</a>
            <a href="jsp/register.jsp">Register</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to FreelanceHub</h1>
        <p>Find work or hire skilled freelancers easily.</p>

        <a href="jsp/register.jsp" class="btn">Get Started</a>
        <a href="jsp/login.jsp" class="btn">Login</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>© 2026 FreelanceHub. All rights reserved.</p>
    </div>

</body>
</html>