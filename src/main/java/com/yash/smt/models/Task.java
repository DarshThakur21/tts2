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
@Table(name = "tasks")
public class Task {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    private  String title;
    private String description;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private Status status;

    @ManyToOne
    @JoinColumn(name = "created_by")
    private User createdBY; //manager



    @ManyToMany
    @JoinTable(
            name = "task_assignments",
            joinColumns =@JoinColumn( name="task_id"),
            inverseJoinColumns = @JoinColumn(name="employee_id")
    )
    @ToString.Exclude
    private Set<User> assignedEmployee;
    public enum Status{
        PENDING,IN_PROGRESS,COMPLETED
    }

}
