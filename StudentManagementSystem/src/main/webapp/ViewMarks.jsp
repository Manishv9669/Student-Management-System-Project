<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Marks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/8.jpeg'); /* Background image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .marks-card {
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

    <div class="marks-card">
        <h2 class="text-primary">Student Marks</h2>
        <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            StudentBean sb = (StudentBean) request.getAttribute("sbean");

            if (ab != null && sb != null) {
        %>
        <p class="text-muted"><strong>Page belongs to Admin:</strong> <%= ab.getfName() %></p>
        <table class="table table-bordered">
            <tr><th>Roll No</th><td><%= sb.getRollNo() %></td></tr>
            <tr><th>Core Java</th><td><%= sb.getMk().getCoreJava() %></td></tr>
            <tr><th>Adv Java</th><td><%= sb.getMk().getAdvJava() %></td></tr>
            <tr><th>UI</th><td><%= sb.getMk().getUi() %></td></tr>
            <tr><th>DB</th><td><%= sb.getMk().getDb() %></td></tr>
            <tr><th>Tools</th><td><%= sb.getMk().getTools() %></td></tr>
        </table>

        <div class="d-grid gap-3 mt-3">
            <a href="edit?rollno=<%= sb.getRollNo() %>" class="btn btn-warning">Edit Marks</a>
            <a href="Student.html" class="btn btn-success">Add Student</a>
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
