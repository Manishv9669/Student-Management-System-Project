<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.StudentBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/7.jpeg'); /* Student background */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .card {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            width: 450px;
        }
        .table {
            margin-top: 10px;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            background: rgba(0, 0, 0, 0.8);
            color: #f8f9fa;
            padding: 10px;
            margin-top: auto;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2 class="text-primary">Student Details</h2>
        <%
            StudentBean sb = (StudentBean) session.getAttribute("stubean");
            if (sb != null) {
        %>
        <table class="table table-bordered">
            <tr><th>Roll No</th><td><%= sb.getRollNo() %></td></tr>
            <tr><th>Name</th><td><%= sb.getName() %></td></tr>
            <tr><th>Course</th><td><%= sb.getCourse() %></td></tr>
            <tr><th>Total Marks</th><td><%= sb.getTotMarks() %></td></tr>
            <tr><th>Percentage</th><td><%= sb.getPer() %> %</td></tr>
            <tr><th>Result</th><td><%= sb.getResult() %></td></tr>
        </table>

        <div class="d-grid gap-3 mt-3">
            <a href="views?rollno=<%= sb.getRollNo() %>" class="btn btn-success">View Marks</a>
            <a href="logoutstu" class="btn btn-danger">Logout</a>
        </div>
        <%
            } else {
        %>
            <p class="text-danger">Unauthorized access. Please <a href="studentLogin.html">login</a> again.</p>
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
