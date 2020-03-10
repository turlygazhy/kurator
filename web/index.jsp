<%@ page import="app.servlets.IndexServlet" %>
<%@ page import="app.entities.LoginedUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Сайт куратора</title>
    <link rel="stylesheet" href="styles/w3.css">
</head>
<body class="w3-light-grey">
<!-- header -->
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Сайт куратора</h1><%--todo need to log in--%>
</div>
<mytags:navbar/>
<%
    LoginedUser user = (LoginedUser) request.getAttribute(IndexServlet.LOGINED_USER_ATTRIBUTE);
    out.println("hi " + user.getFullname());/*todo*/
%>
</body>
</html>