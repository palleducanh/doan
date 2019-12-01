package com.example.demo.controller;

import com.example.demo.entity.Project;
import com.example.demo.entity.Skill;
import com.example.demo.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SkillController {
    @Autowired
    SkillService skillService;

    @GetMapping("/skill")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); // get logged in username
        modelAndView.addObject("username", name);

        modelAndView.addObject("skills", skillService.findAllSkill());
        modelAndView.setViewName("listskill");
        return modelAndView;
    }

    @GetMapping("/skill/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
        skillService.deleteSkillById(id);
        redirect.addFlashAttribute("successMessage", "Deleted skill successfully!");
        return "redirect:/skill";
    }
    @GetMapping("/skill/{id}/edit")
    public ModelAndView edit(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); // get logged in username
        modelAndView.addObject("username", name);
        modelAndView.addObject("Skill", skillService.findSkillById(id));
        modelAndView.setViewName("skillform");
        return modelAndView;
    }
    @GetMapping("/skill/add")
    public ModelAndView add() {
//		staff.setDepartmentId(departmentId);
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); // get logged in username
        modelAndView.addObject("username", name);
        modelAndView.addObject("Skill", new Skill());
        modelAndView.setViewName("skillform");
        return modelAndView;
    }
    @RequestMapping(value = "/skill/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("skill") Skill skill, RedirectAttributes redirect) {
        skillService.save(skill);
        redirect.addFlashAttribute("notification","bạn đã thực hiện thành công !");
        return new ModelAndView("redirect:/skill");
    }
}
