package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Account;
import com.example.demo.service.AccountService;

@Controller
public class LoginController {

    @Autowired
    private AccountService accountService;

    @GetMapping(value = {"/", "/login"})
    public ModelAndView loginpage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @GetMapping(value = "/registration")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        Account account = new Account();

		modelAndView.addObject("account", account);
        modelAndView.setViewName("registration");
        return modelAndView;
    }

    @PostMapping(value = "/registration")
    public ModelAndView createNewUser(@Valid Account account, BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("account", new Account());

        Account accountExist = accountService.findAccountByAccountName(account.getAccountName());
        if (accountExist != null) {
            modelAndView.setViewName("registration");
            return modelAndView;
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("registration");
        } else {
            try {
                accountService.saveAccount(account);
            } catch (Exception e){
				modelAndView.addObject("error", true);
				modelAndView.setViewName("registration");
			}
            modelAndView.addObject("successfull", "User add successfull !");
            modelAndView.addObject("account", new Account());
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }

    @GetMapping(value = "/welcome")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Account account = accountService.findAccountByAccountName(auth.getName());
        modelAndView.addObject("accountName", account.getAccountName());
        modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
        modelAndView.setViewName("welcome");
        return modelAndView;
    }

    @GetMapping(value = "/logout")
    public ModelAndView logout(HttpServletRequest request) {
        request.getSession().removeAttribute("staff");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("logout", true);
        modelAndView.setViewName("redirect:/login");
        return modelAndView;
    }
}
