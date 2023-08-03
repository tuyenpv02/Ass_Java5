package com.example.sd18888.controllers;

import com.example.sd18888.entities.NSX;
import com.example.sd18888.repositories.NSXRepository;
import com.example.sd18888.request.NSXVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/nha-san-xuat")
public class NSXControl {

    @Autowired
    private NSXRepository nsxRepository;

    @Autowired
    private NSXVM vm;

    @GetMapping("index")
    public String index(Model model) {
        List<NSX> lstNSX = this.nsxRepository.findAll();
        model.addAttribute("lstNSX", lstNSX);
        return "admin/nha_san_xuat/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ) {
        this.nsxRepository.deleteById(id);
        return "redirect:/admin/nha-san-xuat/index";
    }

    @GetMapping("create")
    public String create(Model model) {
        vm = new NSXVM();
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/nha-san-xuat/store");
        return "admin/nha_san_xuat/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data") NSXVM spVM,
            BindingResult result,
            Model model
    ) {
        if (result.hasErrors()) {
            model.addAttribute("action", "/admin/nha-san-xuat/store");
            return "admin/nha_san_xuat/create";
        } else {
            NSX cv = new NSX();
            cv.loadSNSXViewModel(spVM);
            this.nsxRepository.save(cv);
            return "redirect:/admin/nha-san-xuat/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id") NSX sp,
            Model model
    ) {
        vm.loadNSXDomainModel(sp);
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/nha-san-xuat/update/" + sp.getId());
        return "admin/nha_san_xuat/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id") NSX sp,
            @Valid @ModelAttribute("data") NSXVM spVM,
            BindingResult result, // BindingResult phải để sau @Valid
            Model model
    ) {
        if (result.hasErrors()) {
            model.addAttribute("action", "/admin/nha-san-xuat/update/" + sp.getId());
            return "admin/nha_san_xuat/create";
        } else {
            sp.loadSNSXViewModel(spVM);
            this.nsxRepository.save(sp);
            return "redirect:/admin/nha-san-xuat/index";
        }
    }
}
