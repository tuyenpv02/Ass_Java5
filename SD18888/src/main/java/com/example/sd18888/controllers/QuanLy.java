package com.example.sd18888.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/quan-ly")
public class QuanLy {

    @GetMapping("")
    public String index(){

        return"quan_ly";
    }
}
