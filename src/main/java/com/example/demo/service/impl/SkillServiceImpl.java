package com.example.demo.service.impl;

import com.example.demo.entity.Account;
import com.example.demo.entity.Role;
import com.example.demo.entity.Skill;
import com.example.demo.repository.AccountRepo;
import com.example.demo.repository.RoleRepo;
import com.example.demo.repository.SkilRepo;
import com.example.demo.service.AccountService;
import com.example.demo.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SkillServiceImpl implements SkillService {

	@Autowired
	private SkilRepo skilRepo;


	@Override
	public List<Skill> findAllSkill() {
		return skilRepo.findAll();
	}

	@Override
	public void deleteSkillById(int id) {
		skilRepo.deleteById(id);
	}

	@Override
	public Skill findSkillById(int id) {
		return skilRepo.getOne(id);
	}

	@Override
	public void save(Skill skill) {
		skilRepo.save(skill);
	}
}
