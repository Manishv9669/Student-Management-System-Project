<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Students</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: url('./images/3.jpeg') no-repeat center center fixed;
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
        padding-top: 30px;
    }
    .content-box {
        background: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 900px;
    }
    .footer {
        text-align: center;
        font-size: 14px;
        background: rgba(0, 0, 0, 0.8);
        color: #f8f9fa;
        padding: 10px;
        margin-top: auto;
    }
    table {
        width: 100%;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ccc;
    }
    th {
        background: #007bff;
        color: white;
    }
    a.view-btn {
        text-decoration: none;
        color: white;
        background: #28a745;
        padding: 5px 10px;
        border-radius: 5px;
    }
    .no-student {
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container-box">
        <div class="content-box">
            <% AdminBean ab = (AdminBean) session.getAttribute("abean"); %>
            <h2>Welcome, <%= ab.getfName() %>!</h2>
            <p>You are logged in as an Admin.</p>
            
            <h4 class="mt-3">Student List</h4>
            <hr>
            <%
                ArrayList<StudentBean> al = (ArrayList<StudentBean>) session.getAttribute("alist");
                if (al == null || al.size() == 0) {
            %>
                <p class="no-student">No Students Available...</p>
            <% } else { %>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Roll No</th>
                            <th>Name</th>
                            <th>Course</th>
                            <th>Total Marks</th>
                            <th>Percentage</th>
                            <th>Result</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (StudentBean sb : al) { %>
                            <tr>
                                <td><%= sb.getRollNo() %></td>
                                <td><%= sb.getName() %></td>
                                <td><%= sb.getCourse() %></td>
                                <td><%= sb.getTotMarks() %></td>
                                <td><%= sb.getPer() %>%</td>
                                <td><%= sb.getResult() %></td>
                                <td><a href='viewm?rollno=<%= sb.getRollNo() %>' class="view-btn">View Marks</a></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            <% } %>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Manish Verma. All rights reserved.</p>
    </footer>
</body>
</html>
