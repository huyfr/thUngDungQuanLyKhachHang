<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2020
  Time: 08:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
</head>
<body>
    <style>
        .message {
            color: green;
        }
    </style>

    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <p>
        <a href="/customer">Back to customer list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>Customer information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email" id="email"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" id="address"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create cusomter"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
