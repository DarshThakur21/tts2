//package com.yash.smt.daos;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.stereotype.Repository;
//
//import java.util.Date;
//
//@Repository
//public class TestDao {
//
//    private final JdbcTemplate jdbcTemplate;
//
//    @Autowired
//    public TestDao(JdbcTemplate jdbcTemplate){
//       this.jdbcTemplate=jdbcTemplate;
//    }
//
//
//    public int save(User user){
//        String query="INSERT INTO User (name, createdAt, role) VALUES (?, ?, ?)";
//
//
//        System.out.println("User: " + user);
//        System.out.println("Name: " + user.getName());
//        System.out.println("CreatedAt: " + user.getCreatedAt());
//        System.out.println("Role: " + user.getRole());
//        int result=jdbcTemplate.update(query,user.getName(),new Date(user.getCreatedAt().getTime()), user.getRole().name());
//        return result;
//    }
//
//
//
//
//}
