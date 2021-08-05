<%--
  Created by IntelliJ IDEA.
  User: Black Diamond
  Date: 8/5/2021
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table.GeneratedTable {
        width: 100%;
        background-color: #ffffff;
        border-collapse: collapse;
        border-width: 2px;
        border-color: #ffcc00;
        border-style: solid;
        color: #000000;
    }

    table.GeneratedTable td, table.GeneratedTable th {
        border-width: 2px;
        border-color: #ffcc00;
        border-style: solid;
        padding: 3px;
    }

    table.GeneratedTable thead {
        background-color: #ffcc00;
    }
</style>
<body>
<!-- HTML Code: Place this code in the document's body (between the 'body' tags) where the table should appear -->
<h3><a href="http://localhost:8080/shopping-cart">Your cart</a>
</h3>
<table class="GeneratedTable">
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Add To Cart</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="emp" items="${products}">
        <tr>
            <td>${emp.name}</td>
            <td>${emp.price}</td>
            <td>
                <a href="http://localhost:8080/add/${emp.id}">Add To Cart</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
