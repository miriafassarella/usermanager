package com.manager.usermanager.controller;

import com.manager.usermanager.domain.model.Person;
import com.manager.usermanager.domain.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/users")
public class PersonController {
    @Autowired
    PersonRepository personRepository;

    @GetMapping
    public List<Person> list(){
        return personRepository.findAll();
    }
}
