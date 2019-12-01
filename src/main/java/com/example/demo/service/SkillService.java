package com.example.demo.service;

import com.example.demo.entity.Account;
import com.example.demo.entity.Role;
import com.example.demo.entity.Skill;

import java.util.List;

public interface SkillService {
	List<Skill> findAllSkill();
	void deleteSkillById(int id);
	Skill findSkillById(int id);
	void save(Skill skill);

}
