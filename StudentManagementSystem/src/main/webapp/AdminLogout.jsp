<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Logout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/3.jpeg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .logout-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="logout-box">
        <%
            session.removeAttribute("abean");
            session.removeAttribute("alist");
            session.invalidate();
        %>
        <h2 class="text-danger">Admin Logged Out Successfully!</h2>
        <p class="text-muted">Redirecting to home page in 3 seconds...</p>

        <script>
            setTimeout(() => {
                window.location.href = "home.html";
            }, 3000);
        </script>
    </div>
</body>
</html>
