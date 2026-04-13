<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - FreelanceHub</title>
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

        /* Register Box */
        .register-container {
            width: 320px;
            margin: 80px auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
        }

        .register-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        input, select {
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

        .footer-text {
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
        }

        .footer-text a {
            text-decoration: none;
            color: #333;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <div class="navbar">
        <h2>FreelanceHub</h2>
        <div class="nav-links">
            <a href="../index.jsp">Home</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <!-- Register Form -->
    <div class="register-container">
        <h2>Register</h2>

        <% 
            String error = request.getParameter("error");
            if ("1".equals(error)) {
        %>
            <div class="error">Registration failed. Try again.</div>
        <% } %>

        <form action="../register" method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>

            <select name="role" required>
                <option value="">Select Role</option>
                <option value="client">Client</option>
                <option value="freelancer">Freelancer</option>
            </select>

            <button type="submit" class="btn">Register</button>
        </form>

        <div class="footer-text">
            <p>Already have an account? <a href="login.jsp">Login</a></p>
        </div>
    </div>

</body>
</html>