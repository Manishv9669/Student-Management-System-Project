<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('./images/4.jpeg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .container-box {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .content-box {
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
        }
    </style>
</head>
<body>
    <div class="container-box">
        <div class="content-box">
            <%
                AdminBean ab = (AdminBean) session.getAttribute("abean");
                String msg = (String) request.getAttribute("msg");
                if (ab != null) {
            %>
                <h2>Welcome, <%= ab.getfName() %>!</h2>
                <p>You are logged in as an Admin.</p>
                <p class="text-info"><%= msg != null ? msg : "" %></p>
                
                <div class="d-grid gap-3 mt-3">
                    <a href="Student.html" class="btn btn-primary">Add Student</a>
                    <a href="view" class="btn btn-success">View All Students</a>
                    <a href="logout" class="btn btn-danger">Logout</a>
                </div>
            <%
                } else {
            %>
                <p class="text-danger">Unauthorized access. Please <a href="AdminLogin.html">login</a> again.</p>
            <%
                }
            %>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Manish Verma. All rights reserved.</p>
    </footer>
</body>
</html>
