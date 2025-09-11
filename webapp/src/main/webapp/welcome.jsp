<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = request.getParameter("user");
    if (userName == null || userName.trim().isEmpty()) {
        userName = "User";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome DevOps</title>
    <style>
        body {
            background-color: #1E90FF;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            font-size: 48px;
        }
        p {
            font-size: 24px;
        }
    </style>
</head>
<body>
    <h1>Welcome to DevOps Page</h1>
    <p>Registered by <strong><%= userName %></strong></p>
</body>
</html>

