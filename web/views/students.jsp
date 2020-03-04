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
    <title>Мои студенты</title>
</head>
<body>
<div>
    <h1>Мои студенты</h1>
</div>
<%
    List<Student> students = (List<Student>) request.getAttribute("students");

    out.println("<table border=\"1\">");
    out.println("<caption>Мои студенты</caption>");
    out.println("<tr>\n" +
            "    <th>Фамилия</th>\n" +
            "    <th>Имя</th>\n" +
            "    <th>Отчество</th>\n" +
            "    <th>Группа</th>\n" +
            "    <th>Социальная категория</th>\n" +
            "    <th>Адрес</th>\n" +
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
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/'">На главную страницу</button>
</div>
</body>
</html>
