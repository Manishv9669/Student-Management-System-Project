<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout Successful</title>
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
        .logout-message {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            width: 400px;
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

    <div class="logout-message">
        <h2 class="text-success">Student Logged Out Successfully</h2>
        <p class="text-muted">You have been safely logged out.</p>
        <a href="home.html" class="btn btn-primary mt-3">Back to Home</a>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Manish Verma. All rights reserved.</p>
    </footer>

</body>
</html>
