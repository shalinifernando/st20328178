<html>
<head><title>Add Car</title></head>
<body>
    <h1>Add Car</h1>
    <form action="addCarAction.jsp" method="post">
        Make: <input type="text" name="make" /><br />
        Model: <input type="text" name="model" /><br />
        Year: <input type="number" name="year" /><br />
        Price: <input type="number" step="0.01" name="price" /><br />
        <input type="submit" value="Add Car" />
    </form>
</body>
</html>

