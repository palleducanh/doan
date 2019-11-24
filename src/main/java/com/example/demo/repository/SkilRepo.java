package com.example.demo.repository;

import com.example.demo.entity.Department;
import com.example.demo.entity.Skill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SkilRepo extends JpaRepository<Skill, Integer> {
	
//	public Department findDepartmentByName(String nameDepartment);
}
