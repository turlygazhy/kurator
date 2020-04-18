<%@ page import="app.servlets.EventsServlet" %>
<%@ page import="app.entities.Event" %>
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
        <select name="nationality" class="w3-border w3-round-large w3-select">
            <option selected disabled>Выберите национальность</option>
            <option>Казах</option><%--todo держать в бд, когда выбирается другое дать поле ввода и--%>
            <option>Русский</option>
            <option>Другое</option>
        </select>
        <button type="submit" class="w3-btn w3-hover-light-blue w3-border-red w3-round-large">Добавить
        </button>
    </form>
</div>

</body>
</html>
