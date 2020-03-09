<%@ page import="java.util.List" %>
<%@ page import="app.entities.Student" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 01.03.20
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Кураторские часы</title>
</head>
<body>
<div>
    <h1>Кураторские часы</h1>
</div>
<%--todo need to show list and input for adding--%>
<%--todo need to button for deleting--%>
<form method="post">
    <label>Отчет:
        <input type="text" name="report"><br />
    </label>
    <button type="submit">Submit</button>
</form>
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/'">На главную страницу</button>
</div>
</body>
</html>
