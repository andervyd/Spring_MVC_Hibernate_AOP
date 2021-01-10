<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Show form</title>
    <style><%@include file="/resources/css/style.css"%></style>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="shortcut icon"
          href="resources/img/favicon.png" />

</head>

<body>

<!-- cсылка на модальное окно -->
<a href="#ModalOpen" title="">text for link</a>
<!-- само модальное окно -->
<div id="ModalOpen" class="Window">
    <div>
        <a href="#close" title="Close" class="close">X</a>
        <p>Content</p>
        <input type="button" value="yes"/>
        <input type="button" value="no"/>
<%--        <img src="img/demo.jpg" alt="..." />--%>
    </div>
</div>


    <div class="container">

        <label id="header">Employee list</label>

        <div class="table">
            <label>#</label>
            <label>Name</label>
            <label>Surname</label>
            <label>Department</label>
            <label>Salary</label>

            <label>Operations</label>

        </div>

        <div class="get-employee">
            <c:forEach var="employees" items="${allEmployees}">

                <c:url var="updateButton" value="/update-info">
                    <c:param name="employeeId" value="${employees.id}"/>
                </c:url>

                <c:url var="deleteButton" value="/delete-employee">
                    <c:param name="employeeId" value="${employees.id}"/>
                </c:url>

                <label>${employees.id}</label>
                <label>${employees.name}</label>
                <label>${employees.surname}</label>
                <label>${employees.department}</label>
                <label>${employees.salary}$</label>

                <input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>

                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>

            </c:forEach>
        </div>

        <input class="bt" type="button" value="add" onclick="window.location.href='add-new-employee'"/>

    </div>

<%--
    <div id="bg">
        <img src="resources/img/background.jpeg" alt="">
    </div>
--%>

</body>
</html>