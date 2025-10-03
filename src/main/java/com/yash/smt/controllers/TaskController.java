package com.yash.smt.controllers;


import com.yash.smt.models.Task;
import com.yash.smt.service.TaskSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import java.util.List;

@Controller
@RequestMapping("/tasks")
public class TaskController {
    @Autowired
    private TaskSerivce taskSerivce;


    @RequestMapping(path ="/", method = RequestMethod.GET)
    public String getAllTasks(Model model){
        List<Task> allTask= taskSerivce.findAllTask() ;
        model.addAttribute("AllTasks",allTask);
        return "index";
    }

    @RequestMapping(path ="/create", method = RequestMethod.POST)
    public String createTask(@ModelAttribute Task task,Model model){
        taskSerivce.createOrUpdate(task);
        List<Task> allTasks = taskSerivce.findAllTask();
        model.addAttribute("AllTasks", allTasks);
        return "index";
    }

    @RequestMapping(path = "/delete/{id}", method = RequestMethod.POST)
    public String deleteTask(@PathVariable int id, Model model){
        taskSerivce.delete(id);

        // Refresh task list after deletion
        List<Task> allTasks = taskSerivce.findAllTask();
        model.addAttribute("AllTasks", allTasks);

        return "index"; // Return view after deletion
    }








}
