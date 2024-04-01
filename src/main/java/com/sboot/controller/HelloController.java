package com.sboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        int a = 1;
        if (a > 5) {
            return "aaa 5";
        }

        return "bbb 5";
    }
}
