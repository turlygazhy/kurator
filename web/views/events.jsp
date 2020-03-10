<!--todo информирования о мероприятиях, конкурсах, проектах-->
<%--todo возможность удалять мероприятия--%>
<%--todo сделать текст красивее--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Мероприятия</title>
    <link rel="stylesheet" href="styles/w3.css">
    <style type="text/css">
        .r1, .r2, .r3 {
            display: block; height: 1px; background: #7da7d9; overflow: hidden;
        }
        .r1 { margin: 0 4px; }
        .r2 { margin: 0 2px; }
        .r3 { margin: 0 1px; height: 2px; }
        .block-round-content  {
            background: #7da7d9; /* Цвет фона */
            color: #fff;
            padding: 10px; /*  Поля вокруг текста */
        }
    </style>
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Мероприятия</h1>
</div>
<mytags:navbar/>
<div class="block-round">
    <span class="r1"></span><span class="r2"></span><span class="r3"></span>
    <div class="block-round-content">
        <h2>Мероприятие 1</h2>
        лваыодвалоывджоалывожалджы овлаожывлаоыв доал ывджоалыв джола
        аол ывджао лывдоа лывджоал джывоалд овы д
        ао ывлдаж олывд ожалдывжоа лывджоа лывдожа дыл
    </div>
    <span class="r3"></span><span class="r2"></span><span class="r1"></span>
    <span class="r1"></span><span class="r2"></span><span class="r3"></span>
    <div class="block-round-content">
        <h2>Мероприятие 2</h2>
        лваыодвалоывджоалывожалджы овлаожывлаоыв доал ывджоалыв джола
        аол ывджао лывдоа лывджоал джывоалд овы д
        ао ывлдаж олывд ожалдывжоа лывджоа лывдожа дыл
    </div>
    <span class="r3"></span><span class="r2"></span><span class="r1"></span>
</div>
</body>
</html>
