package com.ttt.demo.domain.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "jobs_volunteers")
public class JobVolunteer {

    @ManyToOne()
    private Job job;

    @ManyToOne()
    private Volunteer volunteer;
    @Id
    @Column(name = "ROWID")
    private Long id;

    public JobVolunteer() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public Volunteer getVolunteer() {
        return volunteer;
    }

    public void setVolunteer(Volunteer volunteer) {
        this.volunteer = volunteer;
    }
}
