<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2020
  Time: 08:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
    <h1>Customers</h1>
    <p>
        <a href="/customer?action=create"> Create new customers</a>
    </p>
    <table border="1">
        <tr>
            <td>name</td>
            <td>email</td>
            <td>address</td>
            <td>edit</td>
            <td>delete</td>
            <td>View details</td>
        </tr>
        <c:forEach items='${requestScope["customers"]}' var="customer">
            <tr>
                <td>${customer.getName()}</td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getAddress()}</td>
                <td><a href="/customer?action=edit&id=${customer.getId()}">edit</a></td>
                <td><a href="/customer?action=delete&id=${customer.getId()}">delete</a></td>
                <td><a href="/customer?action=view&id=${customer.getId()}">View details</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
