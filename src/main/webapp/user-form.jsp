<%-- 
    Document   : user-form
    Created on : Sep 15, 2024, 5:02:13 PM
    Author     : Java Programming with Aldrin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<body>
    <h1>${user == null ? "Create New User" : "Edit User"}</h1>
    <form action="${user == null ? 'insert' : 'update'}" method="post">
        <input type="hidden" name="id" value="${user != null ? user.id : ''}" />
        <label>Name:</label>
        <input type="text" name="name" value="${user != null ? user.name : ''}" required/><br/>
        <label>Email:</label>
        <input type="email" name="email" value="${user != null ? user.email : ''}" required/><br/>
        <label>Country:</label>
        <input type="text" name="country" value="${user != null ? user.country : ''}" required/><br/>
        <input type="submit" value="${user == null ? 'Save' : 'Update'}" />
    </form>
    <a href="list">Back to User List</a>
</body>
</html>
