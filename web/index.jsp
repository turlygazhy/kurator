<%@ page import="app.entities.LoginedUser" %>
<%@ page import="app.servlets.IndexServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Сайт куратора</title>
    <link rel="stylesheet" href="styles/w3.css">
    <style type="text/css">
        .r1, .r2, .r3 {
            display: block;
            height: 1px;
            overflow: hidden;
        }

        .r1 {
            margin: 0 4px;
        }

        .r2 {
            margin: 0 2px;
        }

        .r3 {
            margin: 0 1px;
            height: 2px;
        }

        .block-round-content {
            padding: 10px; /*  Поля вокруг текста */
        }

        .btn {
            float: right;
            margin-right: 20px;
        }
    </style>
</head>
<body class="w3-light-grey">
<!-- header -->
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Сайт куратора</h1>
</div>
<mytags:navbar/>
<%
    LoginedUser user = (LoginedUser) request.getAttribute(IndexServlet.LOGINED_USER_ATTRIBUTE);
    out.println(String.format("<span class=\"r1\"></span>\n" +
                    "<span class=\"r2\"></span>\n" +
                    "<span class=\"r3\"></span>\n" +
                    "<div class=\"block-round-content\">\n" +
                    "    <p>ФИО: %s</p>\n" +
                    "    <p>%s</p>\n" +
                    "</div>\n" +
                    "<span class=\"r3\"></span>\n" +
                    "<span class=\"r2\"></span>\n" +
                    "<span class=\"r1\"></span>",
            user.getFullname(),
            user.getTitle()));
%>
</body>
</html>