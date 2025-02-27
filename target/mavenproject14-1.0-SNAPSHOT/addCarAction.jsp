<%@page import="com.example.mavenproject14.CarDAOsingleton.CarDAO"%>
<%@page import="com.example.mavenproject14.carmodel.Car"%>

<%
    String make = request.getParameter("make");
    String model = request.getParameter("model");
    int year = Integer.parseInt(request.getParameter("year"));
    double price = Double.parseDouble(request.getParameter("price"));
    
    Car car = new Car(0, make, model, year, price);
    CarDAO carDAO = CarDAO.getInstance();
    carDAO.addCar(car);

    response.sendRedirect("index.jsp");
%>
