<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <h1>Users</h1>

    <table border="1" cellpadding="6">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
            </tr>
        </c:forEach>
    </table>

    <h2>Add a user</h2>
    <form method="post" action="users">
        <label>Name: <input type="text" name="name" required/></label><br/>
        <label>Email: <input type="email" name="email" required/></label><br/>
        <button type="submit">Save</button>
    </form>

    <p><a href="${pageContext.request.contextPath}/">Back to home</a></p>
</body>
</html>
