package com.example.demo.entity;

import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "skill")
public class Skill implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "skill_id")
    private Integer skillId;
    @Basic(optional = false)
    @Column(name = "name")
    private String skillName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "skillTaskId")
    @Nullable
    private Collection<Task> task;

    public Skill() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    @Transient
    private boolean check = true;

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }

    public Integer getSkillId() {
        return skillId;
    }

    public void setSkillId(Integer skillId) {
        this.skillId = skillId;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    @Nullable
    public Collection<Task> getTask() {
        return task;
    }

    public void setTask(@Nullable Collection<Task> task) {
        this.task = task;
    }

    @Nullable
    public Collection<Staff> getStaff() {
        return staff;
    }

    public void setStaff(@Nullable Collection<Staff> staff) {
        this.staff = staff;
    }

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "skillStaffId")
    @Nullable
    private Collection<Staff> staff;
}
