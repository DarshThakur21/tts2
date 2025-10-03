package com.yash.smt.utils;
import com.yash.smt.models.Task;
import com.yash.smt.models.User;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TaskMapper implements RowMapper<Task>{

    @Override
    public Task mapRow(ResultSet rs, int rowNum) throws SQLException {
        Task task=new Task();
//        task.setId(rs.getInt("id"));
        task.setTitle(rs.getString("title"));
        task.setDescription(rs.getString("description"));


        String taskStatus=rs.getString("status");
        task.setStatus(Task.Status.valueOf(taskStatus));


        User user=new User();
        user.setId(rs.getInt("created_by"));

        task.setCreatedBY(user);

        return task;
    }
}
