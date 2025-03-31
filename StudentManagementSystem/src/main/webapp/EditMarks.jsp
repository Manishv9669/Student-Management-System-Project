<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student Marks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('./images/6.jpeg'); /* Background image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .edit-marks-card {
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

    <div class="edit-marks-card">
        <h2 class="text-primary">Edit Student Marks</h2>
        <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            StudentBean sb = (StudentBean) request.getAttribute("sbean");

            if (ab != null && sb != null) {
        %>
        <p class="text-muted"><strong>Admin:</strong> <%= ab.getfName() %></p>

        <form action="update" method="post">
            <input type="hidden" name="rollno" value="<%= sb.getRollNo() %>">

            <div class="mb-3">
                <label class="form-label">Core Java:</label>
                <input type="text" class="form-control" name="corejava" value="<%= sb.getMk().getCoreJava() %>">
            </div>

            <div class="mb-3">
                <label class="form-label">Adv Java:</label>
                <input type="text" class="form-control" name="advjava" value="<%= sb.getMk().getAdvJava() %>">
            </div>

            <div class="mb-3">
                <label class="form-label">UI:</label>
                <input type="text" class="form-control" name="ui" value="<%= sb.getMk().getUi() %>">
            </div>

            <div class="mb-3">
                <label class="form-label">DB:</label>
                <input type="text" class="form-control" name="db" value="<%= sb.getMk().getDb() %>">
            </div>

            <div class="mb-3">
                <label class="form-label">Tools:</label>
                <input type="text" class="form-control" name="tools" value="<%= sb.getMk().getTools() %>">
            </div>

            <button type="submit" class="btn btn-success w-100">Update Marks</button>
        </form>
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
