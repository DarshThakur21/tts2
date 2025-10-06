package com.yash.smt.controllers;

import com.yash.smt.models.Task;
import com.yash.smt.models.User;
import com.yash.smt.service.TaskSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    @Autowired
    private TaskSerivce taskService;

    // ✅ Show all tasks
    @GetMapping
    public String listTasks(Model model) {
        List<Task> tasks = taskService.findAllTask();
        model.addAttribute("tasks", tasks);
        return "task_list"; // JSP/Thymeleaf page (task-list.jsp or task-list.html)
    }

    // ✅ Show form to create task
    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("task", new Task());
        model.addAttribute("statuses", Task.Status.values());
//        List<User> employees = userService.findByRole("EMPLOYEE");
//        model.addAttribute("employees", employees);
        return "task_form"; // task-form.jsp
    }

    // ✅ Save or Update task
    @PostMapping("/save")
    public String saveTask(@ModelAttribute("task") Task task) {
        taskService.createOrUpdate(task);
        return "redirect:/tasks"; // Redirect to list page
    }

    // ✅ Edit task
    @GetMapping("/edit/{id}")
    public String editTask(@PathVariable int id, Model model) {
        Task task = taskService.findTaskById(id);
        model.addAttribute("task", task);
        return "task_form"; // Reuse same form for edit
    }

    // ✅ Mark as completed
    @GetMapping("/complete/{id}")
    public String completeTask(@PathVariable int id) {
        Task task = taskService.findTaskById(id);
        if (task != null) {
            taskService.markAsCompleted(task);
        }
        return "redirect:/tasks";
    }

    // ✅ Delete task
    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable int id) {
        taskService.delete(id);
        return "redirect:/tasks";
    }

    // ✅ View tasks by Manager
    @GetMapping("/manager/{managerId}")
    public String tasksByManager(@PathVariable int managerId, Model model) {
        List<Task> tasks = taskService.findByManager(managerId);
        model.addAttribute("tasks", tasks);
        return "task_list";
    }

    // ✅ View tasks by Employee
    @GetMapping("/employee/{employeeId}")
    public String tasksByEmployee(@PathVariable int employeeId, Model model) {
        List<Task> tasks = taskService.findByEmployee(employeeId);
        model.addAttribute("tasks", tasks);
        return "task_list";
    }
}
