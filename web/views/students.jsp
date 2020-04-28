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
<div class="w3-container w3-padding" style="overflow-x:auto;">
    <%
        List<Student> students = (List<Student>) request.getAttribute("students");

        out.println("<table class=\"w3-table-all\">");
        out.println("<caption>Мои студенты</caption>");
        out.println("<tr>\n" +
                "    <th>Фамилия</th>\n" +
                "    <th>Имя</th>\n" +
                "    <th>Отчество</th>\n" +
                "    <th>Пол</th>\n" +
                "    <th>Национальность</th>\n" +
//                "    <th>Гражданство</th>\n" +
                "    <th>Контактные данные студента</th>\n" +
                "    <th>Контактные данные родителя/опекуна</th>\n" +
                "    <th>Адрес прописки</th>\n" +
//                "    <th>Адрес текущего места жительства</th>\n" +
                "    <th>Тип жилья</th>\n" +
                "    <th>Социальная категория студента</th>\n" +
                "    <th>Семейный статус студента</th>\n" +
                "    <th>Наличие детей у студента</th>\n" +
                "    <th>Верующий ли студент</th>\n" +// TODO: 28.04.20 отображается 0
                "    <th>Носит ли религиозную одежду</th>\n" +
                "   </tr>");
        for (Student student : students) {
            out.println(String.format("<tr >" +
                            "<td >%s</td >" +//lastname
                            "<td >%s</td >" +//name
                            "<td >%s</td >" +//patronomyc
                            "<td >%s</td >" +//gender
                            "<td >%s</td >" +//nationality
                            "<td >%s</td >" +//contacts
                            "<td >%s</td >" +//parent contacts
                            "<td >%s</td >" +//Адрес прописки
//                            "<td >%s</td >" +//Адрес текущего места жительства
                            "<td >%s</td >" +//Тип жилья
                            "<td >%s</td >" +//Социальная категория студента
                            "<td >%s</td >" +//Семейный статус студента
                            "<td >%s</td >" +//Наличие детей у студента
                            "<td >%s</td >" +//Верующий ли студент
                            "<td >%s</td >" +//Носит ли религиозную одежду
                            "</tr >", student.getLastName(),
                    student.getName(),
                    student.getPatronomyc(),
                    student.getGender(),
                    student.getNationality(),
                    student.getPhone() + "\n" + student.getEmail(),
                    student.getParentPhone() + "\n" + student.getParentEmail(),
                    student.getDistrict() + ", " + student.getCity() + ", " + student.getAddress(),
                    student.getLiveType(),
                    student.getSocialCategory(),
                    student.getMerried(),
                    student.getChildCount(),
                    student.getReligious(),
                    student.getDressR()

            ));
        }
        out.println("</table>");
    %>
</div>
<%--todo add button--%>
<p/>
<div>    <!-- buttons holder -->
    <button onclick="location.href='/addStudent'"
            class="w3-btn w3-hover-light-blue w3-round-large w3-border-red w3-round-large">
        Добавить студента
    </button>
</div>
</body>
</html>
