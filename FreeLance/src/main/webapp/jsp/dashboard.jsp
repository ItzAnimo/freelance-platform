<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("../jsp/login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body { font-family: Arial; margin: 0; background: #f4f4f4; }
        .navbar { background: #333; color: white; padding: 15px; }
        .navbar a { color: white; margin-left: 15px; text-decoration: none; }
        .container { padding: 30px; text-align: center; }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #333;
            color: white;
            text-decoration: none;
            margin: 10px;
        }
    </style>
</head>
<body>

<div class="navbar">
    Welcome, <%= user.getName() %>
    <div style="float:right;">
        <a href="../logout">Logout</a>
    </div>
</div>

<div class="container">
    <h2>Dashboard</h2>

    <% if ("client".equals(user.getRole())) { %>
        <a href="postjob.jsp" class="btn">Post Job</a>
        <a href="../viewJobs" class="btn">View Jobs</a>
    <% } else { %>
        <a href="../viewJobs" class="btn">Browse Jobs</a>
    <% } %>
</div>

</body>
</html>