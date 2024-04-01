package com.sboot.service;

import org.springframework.stereotype.Service;

@Service
public class CalService {

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }
}
