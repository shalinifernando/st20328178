<%@ page contentType="text/html" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.mavenproject14.newpackage.UserManager" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add User using Singleton Pattern</title>
</head>
<body>
    <h2>Add User</h2>
    
    <!-- Form to add a new user -->
    <form method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br/><br/>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required /><br/><br/>

        <input type="submit" value="Add User" />
    </form>

    <hr/>

    <%
        // Retrieve the Singleton instance of UserManager
        UserManager userManager = UserManager.getInstance();

        // Get the parameters from the form (POST request)
        String username = request.getParameter("username");
        String email = request.getParameter("email");

        // If the form was submitted, add the user to the list
        if (username != null && email != null) {
            userManager.addUser(username, email);
            out.println("<h3>User Added Successfully!</h3>");
        }

        // Display the list of users
        List<String> users = userManager.getUsers();
        out.println("<h3>Users List:</h3>");
        if (users.isEmpty()) {
            out.println("<p>No users added yet.</p>");
        } else {
            for (String user : users) {
                out.println("<p>" + user + "</p>");
            }
        }
    %>

</body>
</html>

