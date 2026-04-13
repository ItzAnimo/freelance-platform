<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"client".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Post Job</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; }
        .container {
            width: 350px;
            margin: 80px auto;
            background: white;
            padding: 20px;
        }
        input, textarea {
            width: 100%;
            margin: 8px 0;
            padding: 8px;
        }
        .btn {
            background: #333;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Post Job</h2>

    <form action="../postJob" method="post">
        <input type="text" name="title" placeholder="Job Title" required>
        <textarea name="description" placeholder="Description" required></textarea>
        <input type="number" name="budget" placeholder="Budget" required>

        <button type="submit" class="btn">Post Job</button>
    </form>

</div>

</body>
</html>