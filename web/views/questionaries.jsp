<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Анкетирование</title>
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
    <h1>Анкетирование</h1>
</div>
<mytags:navbar/>
<span class="r1"></span>
<span class="r2"></span>
<span class="r3"></span>
<div class="block-round-content">
    <h2>Колесников Май Петрович: Университет глазами студентов</h2>
    <p>1. Каковы были мотивы выбора вуза?</p>
    <p>а. государственный статус вуза</p>
    <p></p>
    <p>2. Выберите наиболее значимые для Вас образовательные цели:</p>
    <p>г. развитие практических навыков</p>
    <p></p>
    <p> 3. Можете ли Вы сказать, что достаточно хорошо понимаете содержание своей
        будущей профессии?</p>
    <p>г. я еще не задумывался о профессиональной деятельности. Главное окончить
        университет</p>
    <p></p>
    <p>4. В какой степени Вы удовлетворены результатами своего обучения в вузе?</p>
    <p>в. не знаю</p>
</div>
<span class="r3"></span>
<span class="r2"></span>
<span class="r1"></span>
<span class="r1"></span>
<span class="r2"></span>
<span class="r3"></span>
<div class="block-round-content">
    <h2>Богданов Панкратий Кимович: Университет глазами студентов</h2>
    <p>1. Каковы были мотивы выбора вуза?</p>
    <p>д. возможность трудоустройства после окончания данного вуза</p>
    <p></p>
    <p>2. Выберите наиболее значимые для Вас образовательные цели:</p>
    <p>ж. развитие навыков общения и лидерства</p>
    <p></p>
    <p> 3. Можете ли Вы сказать, что достаточно хорошо понимаете содержание своей
        будущей профессии?</p>
    <p>г. я еще не задумывался о профессиональной деятельности. Главное окончить
        университет</p>
    <p></p>
    <p>4. В какой степени Вы удовлетворены результатами своего обучения в вузе?</p>
    <p>б. частично удовлетворен</p>
</div>
<span class="r3"></span>
<span class="r2"></span>
<span class="r1"></span>
</body>
</html>