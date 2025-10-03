package com.yash.smt.daos;

import com.yash.smt.models.Task;

import java.util.List;

public interface TaskDao {

    void createTask(Task task);

    Task findById(int id);

    List<Task> findAll();

    List<Task> findByManager(int managerId);

    List<Task> findByEmployee(int employeeId);

    void delete(int id);

    Task update(Task task);
}
