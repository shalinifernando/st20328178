<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.DecimalFormat" %>
<%
    // Retrieve form data
    String productName1 = request.getParameter("productName1");
    double price1 = Double.parseDouble(request.getParameter("price1"));
    int quantity1 = Integer.parseInt(request.getParameter("quantity1"));
    double subtotal1 = price1 * quantity1;

    // You can add more products similarly

    // Calculate total
    double total = subtotal1;

    // Format total
    DecimalFormat df = new DecimalFormat("#.00");
%>
<html>
<head>
    <title>Bill Details</title>
</head>
<body>
    <h2>Generated Bill</h2>
    <table border="1">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <tr>
            <td><%= productName1 %></td>
            <td><%= price1 %></td>
            <td><%= quantity1 %></td>
            <td><%= df.format(subtotal1) %></td>
        </tr>
        <!-- Add more rows for other products here -->

        <tr>
            <td colspan="3"><strong>Total</strong></td>
            <td><strong><%= df.format(total) %></strong></td>
        </tr>
    </table>
</body>
</html>
