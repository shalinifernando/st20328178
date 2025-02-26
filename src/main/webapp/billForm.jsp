<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Bill Generation</title>
</head>
<body>
    <h2>Generate Bill</h2>

    <form action="generateBill.jsp" method="post">
        <table border="1">
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td><input type="text" name="productName1" required/></td>
                <td><input type="number" name="price1" step="0.01" required/></td>
                <td><input type="number" name="quantity1" required/></td>
                <td><input type="number" name="subtotal1" step="0.01" disabled/></td>
            </tr>
            <!-- Add more rows dynamically or statically for more products -->

            <tr>
                <td colspan="3">Total</td>
                <td><input type="text" name="total" disabled/></td>
            </tr>
        </table>

        <br/>
        <input type="submit" value="Generate Bill" />
    </form>
</body>
</html>

