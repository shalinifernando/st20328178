<%@page import="com.example.mavenproject14.carmodel.Car"%>
<%@page import="com.example.mavenproject14.CarDAOsingleton.CarDAO"%>
<%@ page import="java.util.*" %>
<%
    CarDAO carDAO = CarDAO.getInstance();
    List<Car> cars = carDAO.getAllCars();
%>

<html>
<head><title>Car Management</title></head>
<body>
    <h1>All Cars</h1>
    <table border="1">
        <tr>
            <th>Make</th>
            <th>Model</th>
            <th>Year</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <%
            for (Car car : cars) {
        %>
        <tr>
            <td><%= car.getMake() %></td>
            <td><%= car.getModel() %></td>
            <td><%= car.getYear() %></td>
            <td><%= car.getPrice() %></td>
            <td>
                <a href="editCar.jsp?id=<%= car.getId() %>">Edit</a> |
                <a href="deleteCar.jsp?id=<%= car.getId() %>">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
    <br />
    <a href="addCar.jsp">Add New Car</a>
</body>
</html>
