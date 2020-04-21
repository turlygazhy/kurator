<%@ page import="app.servlets.AddStudentServlet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Добавить студента</title><%--информирования о мероприятиях, конкурсах, проектах--%>
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
    <h1>Добавить студента</h1>
</div>
<mytags:navbar/>
<div>
    <form method="post" class="w3-selection w3-light-grey w3-padding"
          style="border: 2px solid limegreen; border-radius: 10px;">
        <div>
            <h2>Добавить нового студента</h2>
        </div>
        <label>Фамилия:
            <input type="text" name="lastname" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Имя:
            <input type="text" name="name" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Отчество:
            <input type="text" name="patronymic" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <select name="gender" class="w3-border w3-round-large w3-select">
            <option selected disabled>Выберите пол</option>
            <option>Муж</option>
            <option>Жен</option>
        </select>
        <%
            List<String> nationalities = (ArrayList<String>) request.getAttribute(AddStudentServlet.NATIONALITIES_ATTRIBUTE_NAME);
            out.println("<select name=\"nationality\" class=\"w3-border w3-round-large w3-select\">\n" +
                    "            <option selected disabled>Выберите национальность</option>\n");
            for (String nationality : nationalities) {
                out.println("<option>" + nationality + "</option>");
            }
            out.println("        </select>");

            List<String> countries = (ArrayList<String>) request.getAttribute(AddStudentServlet.COUNTRIES_ATTRIBUTE_NAME);
            out.println("<select name=\"country\" class=\"w3-border w3-round-large w3-select\">\n" +
                    "            <option selected disabled>Выберите гражданство</option>\n");
            for (String country : countries) {
                out.println("<option>" + country + "</option>");
            }
            out.println("        </select>");
        %>
        <label>Личный телефон:
            <input type="text" name="phone" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Личный email:
            <input type="text" name="email" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Телефон родителя/опекуна:
            <input type="text" name="parentPhone" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>
        <label>Email родителя/опекуна:
            <input type="text" name="parentEmail" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            function hideAll() {
                $("#c0").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#c11").hide();
                $("#c12").hide();
                $("#c13").hide();
            }

            $(document).ready(function () {
                $('#district').on('change', function () {
                    hideAll();
                    if (this.value == 0) {
                        $("#c0").show();
                    }
                    if (this.value == 1) {
                        $("#c1").show();
                    }
                    if (this.value == 2) {
                        $("#c2").show();
                    }
                    if (this.value == 3) {
                        $("#c3").show();
                    }
                    if (this.value == 4) {
                        $("#c4").show();
                    }
                    if (this.value == 5) {
                        $("#c5").show();
                    }
                    if (this.value == 6) {
                        $("#c6").show();
                    }
                    if (this.value == 7) {
                        $("#c7").show();
                    }
                    if (this.value == 8) {
                        $("#c8").show();
                    }
                    if (this.value == 9) {
                        $("#c9").show();
                    }
                    if (this.value == 10) {
                        $("#c10").show();
                    }
                    if (this.value == 11) {
                        $("#c11").show();
                    }
                    if (this.value == 12) {
                        $("#c12").show();
                    }
                    if (this.value == 13) {
                        $("#c13").show();
                    }
                });
            });
        </script>
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
        <select id="c0" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Караганда</option>
            <option>Балхаш</option>
            <option>Жезказган</option>
            <option>Темиртау</option>
            <option>Шахтинск</option>
            <option>Другое</option>
        </select>
        <select id="c1" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Нур-Султан</option>
            <option>Кокшетау</option>
            <option>Щучинск</option>
            <option>Другое</option>
        </select>
        <select id="c2" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Актобе</option>
            <option>Другое</option>
        </select>
        <select id="c3" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Алматы</option>
            <option>Талдыкорган</option>
            <option>Каскелен</option>
            <option>Капчагай</option>
            <option>Талгар</option>
            <option>Другое</option>
        </select>
        <select id="c4" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Атырау</option>
            <option>Кульсары</option>
            <option>Другое</option>
        </select>
        <select id="c5" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Усть-Каменогорск</option>
            <option>Риддер</option>
            <option>Семей</option>
            <option>Другое</option>
        </select>
        <select id="c6" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Тараз</option>
            <option>Другое</option>
        </select>
        <select id="c7" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Уральск</option>
            <option>Аксай</option>
            <option>Другое</option>
        </select>
        <select id="c8" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Костанай</option>
            <option>Лисаковск</option>
            <option>Рудный</option>
            <option>Другое</option>
        </select>
        <select id="c9" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Кызылорда</option>
            <option>Байконур</option>
            <option>Другое</option>
        </select>
        <select id="c10" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Актау</option>
            <option>Другое</option>
        </select>
        <select id="c11" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Павлодар</option>
            <option>Экибастуз</option>
            <option>Другое</option>
        </select>
        <select id="c12" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Петропавловск</option>
            <option>Другое</option>
        </select>
        <select id="c13" name="city" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите город</option>
            <option>Туркестан</option>
            <option>Другое</option>
        </select>
        </body>
        <label>Адрес:
            <input type="text" name="address" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>

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
            <option value="1">У родственников</option>
            <option value="1">Съемная квартира</option>
            <option value="0">Общежитие</option>
        </select>
        <select id="dormitory" name="dormitory" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите общежитие</option>
            <option>Общежитие №1</option>
            <option>Армандастар Ордасы</option>
            <option>Серпіндестер Ордасы</option>
            <option>МГТК</option>
        </select>

        <div id="files" hidden>
            <p/>
            Скан временной прописки и регистрации в общежитии
            <input type="file" name="filePropiska" size="50"/>
            <p/> Скан квитанции об оплате общежития
            <input type="file" name="fileOplata" size="50"/>
            <p/>Скан прикрепления к поликлинике
            <input type="file" name="filePoliclinika" size="50"/>
        </div>

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

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            function showChildCountInput() {
                if (document.getElementById('haveChild').checked) {
                    $("#childCount").show();
                } else {
                    $("#childCount").hide();
                }
            }
        </script>

        <p/>Есть ли у студента дети
        <input type="checkbox" id="haveChild" name="haveChild" value="haveChild" onclick="showChildCountInput();">
        <label for="haveChild">Есть</label><br>

        <label id="childCount" hidden>Количество детей:
            <input type="text" name="childCount" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>

        <p/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#religious').on('change', function () {
                    if (this.value == 0) {
                        $("#religion").show();
                        $("#dressR").show();
                    } else {
                        $("#religion").hide();
                        $("#dressR").hide();
                    }
                });
            });

            $(document).ready(function () {
                $('#religion').on('change', function () {
                    if (this.value == 0) {
                        $("#otherR").show();
                    } else {
                        $("#otherR").hide();
                    }
                });
            });
        </script>

        <select id="religious" name="religious" class="w3-border w3-round-large w3-select">
            <option selected disabled>Верующий ли студент</option>
            <option value="0">Да</option>
            <option value="1">Нет</option>
        </select>

        <select id="religion" name="religion" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Выберите веру</option>
            <option value="1">Ислам</option>
            <option value="1">Христианство</option>
            <option value="0">Другое</option>
        </select>

        <select id="dressR" name="dressR" class="w3-border w3-round-large w3-select" hidden>
            <option selected disabled>Носит ли студент религиозную одежду</option>
            <option>Да</option>
            <option>Нет</option>
        </select>

        <label id="otherR" hidden>Введите веру:
            <input type="text" name="otherR" class="w3-input w3-animate-input w3-border w3-round-large"
                   style="width: 30%"><br/>
        </label>

        <p/>
        <button type="submit" class="w3-btn w3-hover-light-blue w3-border-red w3-round-large">Добавить
        </button>
    </form>
</div>

</body>
</html>
