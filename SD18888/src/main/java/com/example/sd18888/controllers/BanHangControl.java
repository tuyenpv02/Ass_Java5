package com.example.sd18888.controllers;

import com.example.sd18888.entities.ChiTietSP;
import com.example.sd18888.repositories.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class BanHangControl {

    @Autowired
    private ChiTietSPRepository chiTietSPRepo;

    @Autowired
    private SanPhamRepository spRepo;

    @Autowired
    private NSXRepository nsxRepo;

    @Autowired
    private MauSacRepository msRepo;

    @Autowired
    private DongSPRepository dspRepo;

    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpSession session;

    @GetMapping("")
    public String index(Model model
            , @RequestParam(value = "page",defaultValue = "0")Integer pageNo){
         session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");
        if(ma == null){
            session.setAttribute("maHoaDon","");
        }

        Pageable pageable = PageRequest.of(pageNo,6);
        Page<ChiTietSP> ds=this.chiTietSPRepo.findAll(pageable);

        model.addAttribute("lstDongSP",this.dspRepo.findAll());
        model.addAttribute("lstChiTietSP",ds);
        return "home";
    }

}
