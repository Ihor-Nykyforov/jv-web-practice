<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Fill the form</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car <select name="car">
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}"> ${car.model} </option>
            </c:forEach>
        </select><br/>
    Driver <select name="driver"
        <c:forEach items="${drivers}" var="manufacturer">
            <option value="${manufacturer.id}"> ${manufacturer.name} </option>
        </c:forEach>
    <select/><br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
