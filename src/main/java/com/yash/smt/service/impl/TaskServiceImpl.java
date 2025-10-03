package com.yash.smt.service.impl;
import com.yash.smt.daos.TaskDao;
import com.yash.smt.models.Task;
import com.yash.smt.service.TaskSerivce;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class TaskServiceImpl  implements TaskSerivce {

    @Autowired
    private TaskDao taskDao;


    @Override
    public void createOrUpdate(Task task) {
        if(task.getTitle().isEmpty()){
            System.out.println("title is empty");
            return;
        }
        if(task.getDescription().isEmpty()){
            System.out.println("Description not present");
            return;
        }
        taskDao.createTask(task);
    }
    @Override
    public void markAsCompleted(Task task){
        task.setStatus(Task.Status.COMPLETED);
        taskDao.createTask(task);

    }


    @Override
    public Task findTaskById(int taskId) {
        return taskDao.findById(taskId);
    }

    @Override
    @Transactional
    public List<Task> findAllTask() {
        List<Task> allTask=taskDao.findAll();
        return allTask;
    }

    @Override
    public List<Task> findByManager(int managerId) {
        return taskDao.findByManager(managerId);
    }

    @Override
    public List<Task> findByEmployee(int employeeId) {
        return taskDao.findByEmployee(employeeId);
    }

    @Override
    public void delete(int taskId) {
        taskDao.delete(taskId);

    }
}
