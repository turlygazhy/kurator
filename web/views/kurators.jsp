<%@ page import="app.entities.Kurator" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 01.03.20
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Кураторские часы</title>
    <link rel="stylesheet" href="styles/w3.css">
</head>
<body class="w3-light-grey">
<div>
    <div class="w3-container w3-blue-grey w3-opacity w3-right-align">
        <h2>Кураторские часы</h2>
    </div>
    <mytags:navbar/>
    <div class="w3-container w3-padding">
        <%
            List<Kurator> kurators = (List<Kurator>) request.getAttribute("kurators");

            if (kurators.isEmpty()) {
                /*todo*/
            } else {
                out.println("<table class=\"w3-table-all\">");
                out.println("<caption>Кураторские часы</caption>");
                out.println("<tr>\n" +
                        "    <th>№</th>\n" +
                        "    <th>Тема</th>\n" +
                        "    <th>Текст</th>\n" +
                        "   </tr>");
                int i = 1;
                for (Kurator kurator : kurators) {
                    out.println(String.format("<tr ><td >%s</td >" +
                                    "<td >%s</td >" +
                                    "<td >%s</td >" +
                                    "</tr >", i,
                            kurator.getTopic(),
                            kurator.getText()));
                    i++;
                }
                out.println("</table>");
            }
        %>
    </div>
</div>
<%--todo need to button for deleting--%>
<p/>
<div>
    <form method="post" class="w3-selection w3-light-grey w3-padding"
          style="border: 2px solid limegreen; border-radius: 10px;">
        <div>
            <h2>Добавить новый отчет</h2>
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
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/'" class="w3-btn w3-hover-light-blue w3-border-red w3-round-large">
        На главную страницу
    </button>
</div>
</body>
</html>
