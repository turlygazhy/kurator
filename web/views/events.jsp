<%@ page import="app.servlets.EventsServlet" %>
<%@ page import="app.entities.Event" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Мероприятия</title><%--информирования о мероприятиях, конкурсах, проектах--%>
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
                                "<td ><form method=\"post\"><input type=\"hidden\" name=\"delete\" value=\"%d\"/> <input type=\"submit\" value=\"Удалить\" class=\"btn\"/></form></td >" +
                                "<span class=\"r3\"></span><span class=\"r2\"></span><span class=\"r1\"></span>",
                        event.getTopic(), event.getText(), event.getId()));
            }
        }
    %>
</div>
<p/>
<p/>
<div>
    <form method="post" class="w3-selection w3-light-grey w3-padding"
          style="border: 2px solid limegreen; border-radius: 10px;">
        <div>
            <h2>Добавить новое мероприятие</h2>
        </div>
        <label>Тема:
            <input type="text" name="topic" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Отчет:
            <input type="text" name="report" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <button type="submit" class="w3-btn w3-hover-light-blue w3-border-red w3-round-large">Добавить
        </button>
    </form>
</div>

</body>
</html>
