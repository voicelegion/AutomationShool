<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello, web!</title>
</head>
<body>
    <form method="post" action="/hello">
        <label for="userName">Enter your name: </label>
        <br>
        <input id="userName" type="text" name="userName">
        <br>
        <br>
        <label for="surname">Enter your surname: </label>
        <br>
        <input id="surname" type="text" name="surname">
        <br>
        <br>
        <label for="age">Enter your age: </label>
        <br>
        <input id="age" type="text" name="age">


        <input type="submit" value="Submit this stuff">
    </form>
</body>
</html>
