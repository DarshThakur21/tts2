package com.yash.smt.models;


import lombok.*;

import javax.persistence.*;
import java.util.Set;



@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "users")
    public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;

        @Column(unique = true, nullable = false)
        private String username;

        private String password;

        private String fullName;

    @ManyToOne
    @JoinColumn(name = "role_id")
        private Role role;


//emp and manager
@ManyToMany
@JoinTable(
        name = "manager_employee",
        joinColumns = @JoinColumn(name = "manager_id"),
        inverseJoinColumns = @JoinColumn(name = "employee_id")
)
@ToString.Exclude
        private  Set<User> employee;

//    @ManyToMany(mappedBy = "employees")
//        private  Set<User> manager;





    }

