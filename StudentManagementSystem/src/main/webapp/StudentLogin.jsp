<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.StudentBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/7.jpeg'); /* Set a background related to students */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .container-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
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
    <div class="container-box">
        <%
            StudentBean sb = (StudentBean) session.getAttribute("sbean");
            if (sb != null) {
        %>
            <h2 class="text-primary">Welcome, <%= sb.getName() %>!</h2>
            <p class="text-muted">You are logged in as a Student.</p>
            
            <div class="d-grid gap-3 mt-3">
                <a href="viewstu?rollno=<%= sb.getRollNo() %>" class="btn btn-success">View Details</a>
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
