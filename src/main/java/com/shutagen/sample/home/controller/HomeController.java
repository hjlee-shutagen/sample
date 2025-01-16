package com.shutagen.sample.home.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class HomeController {
    @GetMapping("/")
    public String home() {
        log.info("Health Check Request Received");
        return "Sample server is Healthy!!";
    }

    @GetMapping("/hello")
    public String getHello() {
        log.info("Hello World");
        return "Hello World";
    }

    @PostMapping("/hello")
    public String postHello(@RequestParam String name) {
        log.info("Hello {}", name);
        return "Hello " + name;
    }
}
