<%@ page import="java.util.*, model.Job, model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    List<Job> jobs = (List<Job>) request.getAttribute("jobs");
%>

<!DOCTYPE html>
<html>
<head>
    <title>View Jobs</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; margin: 0; }
        .navbar { background: #333; color: white; padding: 15px; }
        .navbar a { color: white; margin-left: 15px; text-decoration: none; }

        .container { padding: 20px; }

        .job {
            background: white;
            padding: 15px;
            margin: 10px 0;
        }

        input, button {
            margin: 5px 0;
            padding: 5px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="dashboard.jsp">Dashboard</a>
    <a href="login.jsp">Logout</a>
</div>

<div class="container">
    <h2>Available Jobs</h2>

    <% if (jobs != null) {
        for (Job job : jobs) {
    %>

    <div class="job">
        <h3><%= job.getTitle() %></h3>
        <p><%= job.getDescription() %></p>
        <p><b>Budget:</b> ₹<%= job.getBudget() %></p>

        <% if ("freelancer".equals(user.getRole())) { %>
        <form action="./applyBid" method="post">
            <input type="hidden" name="jobId" value="<%= job.getId() %>">

            <input type="number" name="amount" placeholder="Your Bid" required>
            <input type="text" name="message" placeholder="Message" required>

            <button type="submit">Apply</button>
        </form>
        <% } %>

    </div>

    <%  }
       } else { %>
        <p>No jobs available</p>
    <% } %>

</div>

</body>
</html>