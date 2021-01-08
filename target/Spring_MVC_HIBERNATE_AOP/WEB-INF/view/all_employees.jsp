<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Show form</title>
    <style><%@include file="/resources/css/style.css"%></style>

    <link rel="shortcut icon"
          href="resources/img/favicon.png" />

</head>

<body>

    <div class="container">

        <label id="header">Employee list</label>

        <div class="table">
            <label>#</label>
            <label>Name</label>
            <label>Surname</label>
            <label>Department</label>
            <label>Salary</label>
        </div>

        <div class="get-employee">
            <c:forEach var="employees" items="${allEmployees}">
                <label>${employees.id}</label>
                <label>${employees.name}</label>
                <label>${employees.surname}</label>
                <label>${employees.department}</label>
                <label>${employees.salary}$</label>
            </c:forEach>
        </div>
    </div>

    <div id="bg">
        <img src="resources/img/background.jpeg" alt="">
    </div>

</body>
</html>