<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>TaskTracker - Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <style>
    /* Global Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background: #f3f4f6; /* Light gray background */
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    /* Container */
    .container {
        width: 800px;
        height: 550px;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 6px 25px rgba(0,0,0,0.15);
        background: #fff;
         /*p*/
    }
    /*pp*/
    .container-flex{
    display:flex;


    }

    /* Left Panel */
    .left-panel {
        flex: 1;
        background: linear-gradient(135deg, #2a5298, #1e3c72);
        color: #fff;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 40px;
        text-align: center;
    }

    .left-panel h1 {
        font-size: 2.2rem;
        margin-bottom: 15px;
    }

    .left-panel p {
        font-size: 1.1rem;
        line-height: 1.6;
        opacity: 0.95;
    }

    /* Right Panel */
    .right-panel {
        flex: 1;
        background: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px;
    }

    .form-box {
        width: 100%;
        max-width: 350px;
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }

    .form-box h2 {
        font-size: 1.8rem;
        margin-bottom: 20px;
        color: #1e3c72;
        text-align: center;
    }

    /* Input Groups */
    .input-group {
        margin-bottom: 15px;
    }

    .input-group label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        font-size: 0.9rem;
        color: #444;
    }

    .input-group input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 0.95rem;
        outline: none;
        transition: 0.3s;
        background-color: #fafafa;
    }

    .input-group input:focus {
        border-color: #2563eb;
        background-color: #fff;
        box-shadow: 0 0 6px rgba(37, 99, 235, 0.4);
    }

    /* Button */
    .btn {
        width: 100%;
        padding: 12px;
        background: linear-gradient(135deg, #2563eb, #1d4ed8);
        border: none;
        border-radius: 8px;
        color: #fff;
        font-size: 1rem;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background: linear-gradient(135deg, #1d4ed8, #1e40af);
    }

    /* Links */
    a {
        color: #2563eb;
        text-decoration: none;
        font-weight: 500;
    }

    a:hover {
        text-decoration: underline;
    }

    /* Error */
    .error {
        color: #c62828;
        margin-top: 10px;
        font-size: 0.9rem;
        text-align: center;
    }







    /** Admin Dashboard */

    /* Sidebar */
    .admin-sidebar {
        width: 240px;
        height: 100vh;
        background: linear-gradient(135deg, #2a5298, #1e3c72);    color: #fff;
        position: fixed; /* stick to left */
        top: 0;
        left: 0;
        padding: 20px 15px;
        display: flex;
        flex-direction: column;
        box-shadow: 2px 0 8px rgba(0, 0, 0, 0.15);
    }
    .admin-sidebar h3 {
        margin-bottom: 30px;
        font-size: 18px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
        color: #e5e7eb;
    }
    .admin-sidebar ul {
        list-style: none;
        padding: 0;
        margin: 0;
        flex: 1;
    }
    .admin-sidebar li {
        margin-bottom: 12px;
    }
    .admin-sidebar a {
        text-decoration: none;
        color: #d1d5db;
        font-weight: 500;
        display: flex;
        align-items: center;
        gap: 10px;
        padding: 10px 14px;
        border-radius: 6px;
        transition: 0.2s ease-in-out;
    }
    .admin-sidebar a:hover,
    .admin-sidebar a.active {
        background-color: rgba(255,255,255,0.15);
        color: #fff;
    }

    /* Content */
    .admin-content {
        margin-left: 240px; /* align with sidebar */
        padding: 40px;
        background-color: #f3f4f6;
        min-height: 100vh;

    }

    /* Headings */
    .admin-content h1 {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 8px;
        color: black;
    }
    .admin-content p {
        color: #fff;
        margin-bottom: 30px;
    }

    /* ---- ADMIN DASHBOARD CARDS ---- */
    .admin-dashboard-cards {
        display: flex;              /* ✅ switched to flex */
        justify-content: space-between;
        gap: 24px;
        margin-top: 20px;
        flex-wrap: nowrap;          /* ✅ force all in 1 line */
    }
    .admin-card {
        background: #fff;
        width: 220px;
        height: auto;
        padding: 25px 20px;
        border-radius: 14px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        text-align: center;
        text-decoration: none;
        color: white;
        transition: transform 0.2s, box-shadow 0.2s;
        display: flex;

        flex-direction: column;
        align-items: center;
        cursor: pointer;
            /* ✅ prevents stretching too wide */
    }

    /* Background colors for each card */
    .admin-card.card-1 {
      background: #08090b;
    }
    .admin-card.card-2 {
      background:  #10b981;
    }

    .admin-card.card-3 {
     /*background: #f59e0b;*/
    }
    /*.admin-card.card-2a {*/
    /*}*/
    .admin-card card-2a{
        background: #f59e0b;

    }

    .admin-card.card-4 {
      background: #6b7280;
    }



    .admin-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 6px 16px rgba(0,0,0,0.12);
          text-decoration: none;
    }
    .admin-card-icon {
        width: 60px;
        height: 60px;
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 15px;
        font-size: 28px;
        color: #fff;
    }
    .admin-card h3 {
        font-size: 18px;
        font-weight: 600;
        margin: 5px 0;
        color: #1e293b;
    }
    .admin-card p {
        font-size: 14px;
        color: #64748b;
        margin: 0;
    }




    /* Links inside cards */
    .admin-card a {
        color: #2563eb;
        font-weight: 600;
        text-decoration: none;
    }
    .admin-card a:hover {
        text-decoration: none;      /* ✅ prevent underline on hover */
        color: #1e40af;             /* optional darker blue hover */
    }





    /* === Pending Approvals Table === */
    .table-container {
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        padding: 20px;
        margin-top: 20px;
        overflow-x: auto; /* in case of many columns */
        min-height: 250px; /* ensures consistent size even with no data */
        display: flex;
        flex-direction: column;
        justify-content: center; /* centers "No data" */
    }

    /* Table */
    .styled-table {
        width: 100%;
        border-collapse: collapse;
        font-size: 15px;
        border-radius: 8px;
        overflow: hidden;
        min-width: 600px; /* keeps structure consistent */
    }

    /* Table Head */
    .styled-table thead th {
        background: #1e3a8a; /* deep professional blue */
        color: #fff;
        text-align: left;
        padding: 14px 16px;
        font-weight: 600;
        letter-spacing: 0.5px;
    }

    /* Table Body */
    .styled-table tbody td {
        padding: 12px 16px;
        border-bottom: 1px solid #e5e7eb;
        color: #374151;
    }

    /* Zebra striping */
    .styled-table tbody tr:nth-child(even) {
        background-color: #f9fafb;
    }

    /* Buttons */
    .btn-approve {
        background-color: #2563eb;
        color: #fff;
        border: none;
        padding: 6px 14px;
        border-radius: 6px;
        cursor: pointer;
        font-size: 14px;
        font-weight: 600;
        transition: background 0.2s ease-in-out;
    }
    .btn-approve:hover {
        background-color: #1d4ed8;
    }

    /* Dropdown */
    .role-dropdown {
        padding: 6px 10px;
        border-radius: 6px;
        border: 1px solid #d1d5db;
        font-size: 14px;
    }

    /* Empty state row */
    .no-data {
        text-align: center;
        color: #6b7280;
        font-style: italic;
        padding: 40px 0;
    }


    /* === User Management Styling (extends Pending Approvals) === */

    /* Alerts */
    .error-msg {
        color: #b91c1c;
        background: #fee2e2;
        padding: 10px 14px;
        border-radius: 6px;
        margin-bottom: 12px;
    }
    .success-msg {
        color: #065f46;
        background: #d1fae5;
        padding: 10px 14px;
        border-radius: 6px;
        margin-bottom: 12px;
    }

    /* Action buttons with icons */
    .action-icons {
        display: flex;
        gap: 10px;
    }
    .icon-btn {
        text-decoration: none;
        font-size: 18px;
        padding: 6px;
        border-radius: 6px;
        transition: 0.2s ease-in-out;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        color: white;
    }
    .edit-btn {
        background: #e0f2fe;
        color: #0369a1;
        text-decoration: none;
    }
    .edit-btn:hover {
        background: #bae6fd;
         text-decoration: none;
    }
    .delete-btn {
        background: #fee2e2;
        color: #b91c1c;
         text-decoration: none;
    }
    .delete-btn:hover {
        background: #fecaca;
         text-decoration: none;
    }






    .edit-body {
        font-family: Arial, sans-serif;
        background: rgba(0,0,0,0.3);
        margin: 0;
        padding: 0;
    }

    .floating-box {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: #fff;
        padding: 30px;
        width: 380px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.25);
        z-index: 1000;
    }

    .heading-1 {
        margin-bottom: 15px;
        text-align: center;
        color: #333;
    }

    .edit-form .form-group {
        margin-bottom: 12px;
    }

    .edit-form label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #444;
    }

    .edit-form input,
    .edit-form select {
        width: 100%;
        padding: 8px;
        border: 1px solid #bbb;
        border-radius: 6px;
        box-sizing: border-box;
    }

    .btn-update {
        width: 100%;
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px;
        margin-top: 10px;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .btn-update:hover {
        background-color: #0056b3;
    }

    .back-link {
        display: block;
        margin-top: 12px;
        text-align: center;
        color: #007bff;
        text-decoration: none;
    }

    .back-link:hover {
        text-decoration: underline;
    }



    .container-flex{
        display:flex;
    }


    /******************/
    /***********Edit User***********/

    /* Edit User Page - Styles */
    /*
    .edit-body {
        background-color: #007bff; /* A nice blue color */
        /*
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .edit-container {
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 500px;
        text-align: center;
        margin: 4px;
    }
    .edit-container h2 {
        color: #333;
        margin-bottom: 25px;
        font-size: 24px;
    }
    .edit-form .form-group {
        text-align: left;
        margin-bottom: 15px;
    }
    .edit-form label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }
    .edit-form input[type="text"],
    .edit-form input[type="email"],
    .edit-form select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    .btn-update {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 12px 25px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }
    .btn-update:hover {
        background-color: #0056b3;
    }
    .back-link {
        display: inline-block;
        margin-top: 20px;
        color: #007bff;
        text-decoration: none;
        font-size: 14px;
    }
    .back-link:hover {
        text-decoration: underline;
    }

    .heading-1{
    color: #fff;
    }
    */

        .task-section {
            margin: 20px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin: 10px 0;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        .form-group textarea {
            height: 80px;
            resize: vertical;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container" style="flex-direction: column; align-items: flex-start; padding: 20px;">
    <h1>Welcome, <%= user.getFirstName() %>!</h1>
    <p>Your role: <b><%= user.getRole() %></b></p>

    <h3>Menu</h3>
    <ul>
        <li><a href="#">My Tasks</a></li>
        <li><a href="#">Reports</a></li>

        <% if(user.getRole() == UserRole.MANAGER || user.getRole() == UserRole.ADMIN) { %>
            <li><a href="#">Team Overview</a></li>
        <% } %>

        <% if(user.getRole() == UserRole.ADMIN) { %>
            <li><a href="#">User Management</a></li>
        <% } %>
    </ul>

    <!-- Personal Task Creation Section -->
    <div class="task-section">
        <h3>Create Personal Task</h3>
        <form action="createPersonalTask" method="post">
            <div class="form-group">
                <label for="personalTaskTitle">Task Title:</label>
                <input type="text" id="personalTaskTitle" name="title" required>
            </div>
            <div class="form-group">
                <label for="personalTaskDescription">Description:</label>
                <textarea id="personalTaskDescription" name="description" placeholder="Enter task description..."></textarea>
            </div>
            <div class="form-group">
                <label for="personalTaskPriority">Priority:</label>
                <select id="personalTaskPriority" name="priority" required>
                    <option value="">Select Priority</option>
                    <option value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                    <option value="URGENT">Urgent</option>
                </select>
            </div>
            <div class="form-group">
                <label for="personalTaskDueDate">Due Date:</label>
                <input type="datetime-local" id="personalTaskDueDate" name="dueDate">
            </div>
            <button type="submit" class="btn">Create Personal Task</button>
        </form>
    </div>

    <!-- Task Assignment Section (for Managers and Admins) -->
    <% if(user.getRole() == UserRole.MANAGER || user.getRole() == UserRole.ADMIN) { %>
        <div class="task-section">
            <h3>Create and Assign Task</h3>
            <form action="createAssignedTask" method="post">
                <div class="form-group">
                    <label for="assignedTaskTitle">Task Title:</label>
                    <input type="text" id="assignedTaskTitle" name="title" required>
                </div>
                <div class="form-group">
                    <label for="assignedTaskDescription">Description:</label>
                    <textarea id="assignedTaskDescription" name="description" placeholder="Enter task description..."></textarea>
                </div>
                <div class="form-group">
                    <label for="assignedTaskPriority">Priority:</label>
                    <select id="assignedTaskPriority" name="priority" required>
                        <option value="">Select Priority</option>
                        <option value="LOW">Low</option>
                        <option value="MEDIUM">Medium</option>
                        <option value="HIGH">High</option>
                        <option value="URGENT">Urgent</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="assignedTaskDueDate">Due Date:</label>
                    <input type="datetime-local" id="assignedTaskDueDate" name="dueDate">
                </div>
                <div class="form-group">
                    <label for="assignToEmployee">Assign to Employee:</label>
                    <select id="assignToEmployee" name="assignedUserId" required>
                        <option value="">Select Employee</option>
                        <!-- This should be populated dynamically from your backend -->
                        <!-- You'll need to add a servlet to fetch employees -->
                        <!-- Example options (replace with dynamic content): -->
                        <%--
                        <%
                            // Add this code in your servlet to populate employees
                            List<User> employees = userService.getUsersByRole(UserRole.EMPLOYEE);
                            for(User emp : employees) {
                        %>
                            <option value="<%= emp.getId() %>"><%= emp.getFirstName() + " " + emp.getLastName() %></option>
                        <%
                            }
                        %>
                        --%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="taskCategory">Category (Optional):</label>
                    <select id="taskCategory" name="category">
                        <option value="">Select Category</option>
                        <option value="DEVELOPMENT">Development</option>
                        <option value="TESTING">Testing</option>
                        <option value="DOCUMENTATION">Documentation</option>
                        <option value="MEETING">Meeting</option>
                        <option value="RESEARCH">Research</option>
                        <option value="OTHER">Other</option>
                    </select>
                </div>
                <button type="submit" class="btn">Create and Assign Task</button>
            </form>
        </div>
    <% } %>

    <p><a href="logout">Logout</a></p>
</div>

<script>
    // Set minimum date to today for due date fields
    const today = new Date().toISOString().slice(0, 16);
    document.getElementById('personalTaskDueDate').min = today;

    <% if(user.getRole() == UserRole.MANAGER || user.getRole() == UserRole.ADMIN) { %>
        document.getElementById('assignedTaskDueDate').min = today;
    <% } %>
</script>
</body>
</html>