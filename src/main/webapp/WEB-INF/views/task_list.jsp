<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<html>
<head><title>Task List</title></head>
<body>
<h2>All Tasks</h2>
<a href="${pageContext.request.contextPath}/tasks/new">Create New Task</a>
<table border="1">
    <tr>
        <th>ID</th><th>Title</th><th>Description</th><th>Status</th><th>Actions</th>
    </tr>
    <c:forEach var="task" items="${tasks}">
        <tr>
            <td>${task.id}</td>
            <td>${task.title}</td>
            <td>${task.description}</td>
            <td>${task.status}</td>
            <td>
                <a href="${pageContext.request.contextPath}/tasks/edit/${task.id}">Edit</a> |

                <a href="${pageContext.request.contextPath}/tasks/delete/${task.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
