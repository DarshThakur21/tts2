package com.yash.smt.service;

import com.yash.smt.models.Task;

import java.util.List;

public interface TaskSerivce {

    void createOrUpdate(Task task);

    Task findTaskById(int taskId);

    List<Task> findAllTask();

    List<Task> findByManager(int managerId);

    List<Task> findByEmployee(int employeeId);

    void delete(int taskId);
     void markAsCompleted(Task task);

}
