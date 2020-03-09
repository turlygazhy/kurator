<%@ page import="java.util.List" %>
<%@ page import="app.entities.Student" %>
<%@ page import="app.entities.Kurator" %><%--
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
<%
    List<Kurator> kurators = (List<Kurator>) request.getAttribute("kurators");

    if (kurators.isEmpty()) {
        /*todo*/
    } else {
        out.println("<table border=\"1\">");
        out.println("<caption>Кураторские часы</caption>");
        out.println("<tr>\n" +
                "    <th>№</th>\n" +
                "    <th>Тема</th>\n" +
                "    <th>Текст</th>\n" +
                "   </tr>");
        for (Kurator kurator : kurators) {
            out.println(String.format("<tr ><td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "</tr >", kurator.getId(),
                    kurator.getTopic(),
                    kurator.getText()));
        }
        out.println("</table>");
    }
%>
<%--todo need to button for deleting--%>
<p/>
<form method="post">
    <label>Тема:
        <input type="text" name="topic"><br/>
    </label>
    <label>Отчет:
        <input type="text" name="report"><br/>
    </label>
    <button type="submit">Добавить</button>
</form>
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/'">На главную страницу</button>
</div>
</body>
</html>
