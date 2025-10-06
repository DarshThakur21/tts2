package com.yash.smt.daos.hibernateImpl;

import com.yash.smt.daos.TaskDao;
import com.yash.smt.models.Task;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.Collections;
import java.util.List;



@Repository
public class TaskDaoImpl implements TaskDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public TaskDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession(){
      return  sessionFactory.getCurrentSession();
    }

    @Override
    public void createTask(Task task) {
        getSession().saveOrUpdate(task);
    }

    @Override
    public Task findById(int id) {
        return  getSession().get(Task.class,id);
    }

//    @Override
//    public List<Task> findAll() {
//        return getSession().createQuery("FROM Task", Task.class).list();
////        return Collections.emptyList();
//    }

    @Override
    public List<Task> findAll() {
        return getSession().createQuery("FROM Task", Task.class).list();
//        return Collections.emptyList();
    }



    @Override
    public List<Task> findByManager(int managerId) {
        return getSession()
                .createQuery("FROM Task WHERE createdBy.id = :mid", Task.class)
                .setParameter("mid", managerId)
                .getResultList();
    }

    @Override
    public List<Task> findByEmployee(int employeeId) {
        return getSession()
                .createQuery("SELECT t FROM Task t JOIN t.assignedEmployees e WHERE e.id = :eid", Task.class)
                .setParameter("eid",employeeId)
                .getResultList();

    }

    @Override
    public void delete(int id) {
        Task task = getSession().get(Task.class, id);
        if (task != null) {
            getSession().remove(task);
        }

    }

    @Override
    public Task update(Task task) {
        return null;
    }
}
