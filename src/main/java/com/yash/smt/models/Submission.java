package com.yash.smt.models;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "submissions")
public class Submission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "task_id")
    private Task task;



    @ManyToOne
    @JoinColumn(name = "employee_id")
    private  User employee;

    @Enumerated(EnumType.STRING)
    private  SubmissionType submissionType;



    private String submissionValue;

    private LocalDateTime submittedAt = LocalDateTime.now();


    public enum SubmissionType{
        FILE,LINK,TEXT;
    }


}
