<%@ page import="app.entities.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Отчеты</title>
    <link rel="stylesheet" href="styles/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Отчеты</h1>
</div>
<mytags:navbar/>
<div>
    <form method="post" class="w3-selection w3-light-grey w3-padding"
          style="border: 2px solid limegreen; border-radius: 10px;">
        <div>
            <h2>Поиск студентов</h2>
        </div>
        <body>
        <select id="district" name="district" class="w3-border w3-round-large w3-select">
            <option selected disabled>Выберите область</option>
            <option value="0">Карагандинская область</option>
            <option value="1">Акмолинская область</option>
            <option value="2">Актюбинская область</option>
            <option value="3">Алматинская область</option>
            <option value="4">Атырауская область</option>
            <option value="5">Восточно-Казахстанская область</option>
            <option value="6">Жамбылская область</option>
            <option value="7">Западно-Казахстанская область</option>
            <option value="8">Костанайская область</option>
            <option value="9">Кызылординская область</option>
            <option value="10">Мангистауская область</option>
            <option value="11">Павлодарская область</option>
            <option value="12">Северо-Казахстанская область</option>
            <option value="13">Туркестанская область</option>
        </select>
        </body>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#liveType').on('change', function () {
                    if (this.value == 0) {
                        $("#dormitory").show();
                        $("#files").show();
                    } else {
                        $("#dormitory").hide();
                        $("#files").hide();
                    }
                });
            });
        </script>

        <select id="liveType" name="liveType" class="w3-border w3-round-large w3-select">
            <option selected disabled>Выберите с кем живет студент</option>
            <option value="1">С родителями</option>
            <option value="2">У родственников</option>
            <option value="3">Съемная квартира</option>
            <option value="0">Общежитие</option>
        </select>
        <select id="dormitory" name="dormitory" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите общежитие</option>
            <option>Общежитие №1</option>
            <option>Армандастар Ордасы</option>
            <option>Серпіндестер Ордасы</option>
            <option>МГТК</option>
        </select>

        <p/>Относится ли студент к следующим социальным категориям
        <p/><input type="checkbox" id="sirota" name="sirota" value="sirota">
        <label for="sirota"> Сирота</label><br>
        <input type="checkbox" id="opekaemii" name="opekaemii" value="opekaemii">
        <label for="opekaemii">Опекаемый</label><br>
        <input type="checkbox" id="withOutOneParent" name="withOutOneParent" value="withOutOneParent">
        <label for="withOutOneParent">Без одного родителя-кормильца</label><br>
        <input type="checkbox" id="chellenged1" name="chellenged1" value="chellenged1">
        <label for="chellenged1">Инвалид 1 группы</label><br>
        <input type="checkbox" id="chellenged2" name="chellenged2" value="chellenged2">
        <label for="chellenged2">Инвалид 2 группы</label><br>
        <input type="checkbox" id="chellenged3" name="chellenged3" value="chellenged3">
        <label for="chellenged3">Инвалид 3 группы</label><br>
        <input type="checkbox" id="bigFamily" name="bigFamily" value="bigFamily">
        <label for="bigFamily">Из многодетной семьи</label><br>
        <input type="checkbox" id="chellengedParents" name="chellengedParents" value="chellengedParents">
        <label for="chellengedParents">Родители-инвалиды</label><br>
        <input type="checkbox" id="returned" name="returned" value="returned">
        <label for="returned">Оралман</label><br>
        <p/>

        <select name="merried" class="w3-border w3-round-large w3-select">
            <option selected disabled>Выберите семейный статус</option>
            <option>В браке</option>
            <option>Холост</option>
        </select>

        <p/>
        <button type="submit" class="w3-btn w3-hover-light-blue w3-border-red w3-round-large">Поиск
        </button>
    </form>
    <div class="w3-container w3-padding" style="overflow-x:auto;">
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");

            if (students != null && !students.isEmpty()) {

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
                        "    <th>Верующий ли студент</th>\n" +
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
            }
        %>
    </div>
</div>
</body>
</html>