<%@ page import="lv.ctco.javaschool.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="ourUser" scope="session" type="lv.ctco.javaschool.User"/>
<html>
<head>
    <title>hello page</title>
<style>
    table#table1 td{background-color: brown}
</style>
</head>
<body>
<h1>Hello, <%=session.getAttribute("userName")%></h1>

<table style="width:50%" border="1px solid black" align="center" id="table1">
    <%--<% User myUser = (User) session.getAttribute("ourUser"); %>--%>
    <tr align="center">
        <th align="center">Name</th>
        <th>Surname</th>
        <th>Age</th>
    </tr>
    <tr align="center">
        <td style="background-color: aqua"><%=ourUser.getName()%></td>
        <td style="background-color: chartreuse"><%=ourUser.getSurname()%></td>
        <td style="background-color: purple"><%=ourUser.getAge()%></td>
    </tr>
</table>
</body>
</html>