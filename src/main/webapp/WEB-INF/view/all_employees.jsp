<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

    <h2>All employees</h2>
    <br/>

    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
        </tr>
        <c:forEach var="employees" items="${allEmployees}">
            <tr>
                <td>${employees.name}</td>
                <td>${employees.surname}</td>
                <td>${employees.department}</td>
                <td>${employees.salary}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>