<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored = "false" %>
<html>
<head><title>Task Form</title></head>
<body>
<h2>Task Form</h2>

<form:form method="post" modelAttribute="task" action="${pageContext.request.contextPath}/tasks/save">
    <form:hidden path="id"/>

    Title: <form:input path="title"/><br/>
    Description: <form:input path="description"/><br/>

    Status:
    <form:select path="status">
        <form:option value="PENDING" label="Pending"/>
        <form:option value="COMPLETED" label="Completed"/>
        <form:option value="IN_PROGRESS" label="Inprogress"/>
    </form:select>
    <br/>

    <input type="submit" value="Save"/>
</form:form>

</body>
</html>
