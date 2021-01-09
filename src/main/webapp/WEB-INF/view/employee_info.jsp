<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

    <h2>Employee info:</h2>
    <br/>

    <form:form class="constructor" action="saving-employee-data" modelAttribute="employee">

        Name: <form:input path="name"/>
        <br/>
        Surname: <form:input path="surname"/>
        <br/>
        Department: <form:input path="department"/>
        <br/>
        Salary: <form:input path="salary"/>
        <br/>

        <input type="submit" value="ok">


    </form:form>

<%--<div id="bg">--%>
<%--    <img src="resources/img/background.jpeg" alt="">--%>
<%--</div>--%>

</body>
</html>