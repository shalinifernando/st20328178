<%@page import="com.example.mavenproject14.CarDAOsingleton.CarDAO"%>

<%
    int carId = Integer.parseInt(request.getParameter("id"));
    CarDAO carDAO = CarDAO.getInstance();
    carDAO.deleteCar(carId);
    response.sendRedirect("index.jsp");
%>
