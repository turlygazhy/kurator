<%@ page import="app.servlets.NotificationsServlet" %>
<%@ page import="app.entities.Notification" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Уведомления</title><%--здесь будут уведомления: информация о нарушениях, достижениях студентов--%>
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
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Уведомления</h1>
</div>
<mytags:navbar/>
<%
    List<Notification> notifications = (List<Notification>) request.getAttribute(NotificationsServlet.NOTIFICATIONS_ATTRIBUTE);
    if (notifications.isEmpty()) {
        out.println("Новых уведомлений нет");
    } else {
        for (Notification event : notifications) {
            out.println(String.format("<span class=\"r1\"></span><span class=\"r2\"></span><span class=\"r3\"></span>\n" +
                            "        <div class=\"block-round-content\">\n" +
                            "    <h2>%s</h2>\n" +
                            "    %s" +
                            "</div>\n" +

                            "<span class=\"r3\"></span><span class=\"r2\"></span><span class=\"r1\"></span>",
                    event.getTopic(), event.getText(), event.getId()));
        }
    }
%>
</body>
</html>