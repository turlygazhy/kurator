<%@ page import="app.servlets.EventsServlet" %>
<%@ page import="app.entities.Event" %>
<%@ page import="java.util.List" %>
<!--todo информирования о мероприятиях, конкурсах, проектах-->
<%--todo возможность удалять мероприятия                                     "<td ><form method=\"post\"><input type=\"hidden\" name=\"delete\" value=\"%d\"/> <input type=\"submit\" value=\"Удалить\"/></form></td >" --%>
<%--todo возможность добавлять--%>
<%--todo сделать текст красивее--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Мероприятия</title>
    <link rel="stylesheet" href="styles/w3.css">
    <style type="text/css">
        .r1, .r2, .r3 {
            display: block;
            height: 1px;
            background: #7da7d9;
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
            background: #7da7d9; /* Цвет фона */
            color: #fff;
            padding: 10px; /*  Поля вокруг текста */
        }
    </style>
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Мероприятия</h1>
</div>
<mytags:navbar/>
<div class="block-round">
    <%
        List<Event> events = (List<Event>) request.getAttribute(EventsServlet.EVENTS_ATTRIBUTE);
        if (events.isEmpty()) {
            out.println("Здесь будут отображены мероприятия");
        } else {
            for (Event event : events) {
                out.println(String.format("<span class=\"r1\"></span><span class=\"r2\"></span><span class=\"r3\"></span>\n" +
                                "        <div class=\"block-round-content\">\n" +
                                "    <h2>%s</h2>\n" +
                                "    %s" +
                                "</div>\n" +
                                "<span class=\"r3\"></span><span class=\"r2\"></span><span class=\"r1\"></span>",
                        event.getTopic(), event.getText()));
            }
        }
    %>
</div>
</body>
</html>
