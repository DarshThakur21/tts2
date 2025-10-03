<%@ page contentType="text/html;charset=UTF-8"  %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Task Tracker - All Tasks</title>
</head>
<body>

<h2>All Tasks</h2>

<!-- Form to create new task -->
<form action="${pageContext.request.contextPath}/tasks/create" method="post">
    <label>Title: <input type="text" name="title" required /></label>
    <br/>
    <label>Description: <textarea name="description"></textarea></label>
    <br/>
    <!-- Add other fields if needed -->
    <button type="submit">Create Task</button>
</form>

<hr/>

<!-- Task List Table -->
<table border="1" cellpadding="5" cellspacing="0">
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="task" items="${AllTasks}">
        <tr>
            <td>${task.id}</td>
            <td>${task.title}</td>
            <td>${task.description}</td>
            <td>
                <!-- Delete form -->
                <form action="${pageContext.request.contextPath}/tasks/delete/${task.id}" method="post" style="display:inline;">
                    <input type="hidden" name="_method" value="delete" />
                    <button type="submit" onclick="return confirm('Delete this task?');">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
