<%@ page import="java.util.List" %>
<%@ page import="app.entities.Student" %><%--
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
    <title>Мои студенты</title>
    <link rel="stylesheet" href="styles/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Мои студенты</h1>
</div>
<mytags:navbar/>
<div class="w3-container w3-padding">
    <%
        List<Student> students = (List<Student>) request.getAttribute("students");

        out.println("<table class=\"w3-table-all\">");
        out.println("<caption>Мои студенты</caption>");
        out.println("<tr>\n" +
                "    <th>Фамилия</th>\n" +
                "    <th>Имя</th>\n" +
                "    <th>Отчество</th>\n" +
                "    <th>Группа</th>\n" +
                "    <th>Социальная категория</th>\n" +/*todo dropdown: из многодетной семьи, сирота, инвалид*/
                "    <th>Адрес</th>\n" +/*todo разделить адрес, можно выбирать из дропдауна область и город*/
                "    <th>Телефон</th>\n" +
                "   </tr>");
        for (Student student : students) {
            out.println(String.format("<tr ><td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "<td >%s</td >" +
                            "</tr >", student.getLastname(),
                    student.getFirstname(),
                    student.getPatronymic(),
                    student.getGroup(),
                    student.getSocialCategory(),
                    student.getAddress(),
                    student.getPhone()));
        }
        out.println("</table>");
    %>
</div>
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/'" class="w3-btn w3-hover-light-blue w3-round-large w3-border-red w3-round-large">
        На главную страницу
    </button>
</div>
</body>
</html>
