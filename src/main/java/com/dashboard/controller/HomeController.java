package com.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dashboard.model.Client;
import com.dashboard.repository.ClientRepository;

@Controller
public class HomeController {
    @Autowired
    private ClientRepository clientRepository;

    @GetMapping({"/","/home"})
    public String viewHomePage(Model model) {
        List<Client> list = clientRepository.findAll();
        model.addAttribute("clients", list);
        return "index";
    }
	
    @GetMapping("/addNew")
    public String showNewClientForm(Model model) {
        model.addAttribute("client", new Client());
        return "clientForm";
    }

    @PostMapping("/save")
    public String saveClient(@ModelAttribute("client") Client client) {
        clientRepository.save(client);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("client", clientRepository.findById(id).orElseThrow());
        return "clientForm";
    }

    @GetMapping("/view/{id}")
    public String viewClient(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("client", clientRepository.findById(id).orElseThrow());
        return "viewClient";
    }

    @GetMapping("/delete/{id}")
    public String deleteClient(@PathVariable("id") Integer id) {
        clientRepository.deleteById(id);
        return "redirect:/";
    }
}
