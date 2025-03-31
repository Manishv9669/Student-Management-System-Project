<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Marks Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/5.jpeg'); /* Background image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .status-card {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            width: 450px;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            background: rgba(0, 0, 0, 0.8);
            color: #f8f9fa;
            padding: 10px;
            width: 100%;
            position: fixed;
            bottom: 0;
        }
    </style>
</head>
<body>

    <div class="status-card">
        <h2 class="text-primary">Update Marks Status</h2>
        <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");

            if (ab != null) {
        %>
        <p class="text-muted"><strong>Admin:</strong> <%= ab.getfName() %></p>
        <p class="text-success"><strong><%= msg %></strong></p>

        <div class="d-grid gap-3 mt-3">
            <a href="Student.html" class="btn btn-primary">Add Student</a>
            <a href="view" class="btn btn-info">View All Students</a>
            <a href="logout" class="btn btn-danger">Logout</a>
        </div>
        <%
            } else {
        %>
            <p class="text-danger">Unauthorized access. Please <a href="adminLogin.html">login</a> again.</p>
        <%
            }
        %>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Manish Verma. All rights reserved.</p>
    </footer>

</body>
</html>
