package com.shutagen.sample.home.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "Sample server is Healthy!!";
    }

    @GetMapping("/hello")
    public String getHello() {
        return "Hello World";
    }

    @PostMapping("/hello")
    public String postHello(@RequestParam String name) {
        return "Hello " + name;
    }
}
