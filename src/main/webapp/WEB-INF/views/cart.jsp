<%--
  Created by IntelliJ IDEA.
  User: Black Diamond
  Date: 8/5/2021
  Time: 3:14 PM
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
<h3><a href="http://localhost:8080/shop">Shop</a></h3>
<p>Total Items: ${cart.countItemQuantity()}</p>
<p>Total Products: ${cart.countProductQuantity()}</p>
<table class="GeneratedTable">
    <thead>
    <tr>
        <th>Item</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="emp" items="${cart.products}">
        <tr>
            <td>${emp.key.name}</td>
            <td>${emp.value}</td>
            <td>${emp.key.price}</td>
        </tr>
    </c:forEach>
    <tr>
        <td>Total</td>
        <td></td>
        <td>${cart.countTotalPayment()}</td>
    </tr>
    </tbody>
</table>
</body>
</html>
