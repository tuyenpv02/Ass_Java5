package com.example.sd18888.controllers;

import com.example.sd18888.entities.CuaHang;
import com.example.sd18888.repositories.CuaHangReopository;
import com.example.sd18888.request.CuaHangVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("admin/cua-hang")
public class CuaHangControl {

    @Autowired
    private CuaHangReopository chRepo;

    @Autowired
    private CuaHangVM vm;

    @GetMapping("index")
    public String index(Model model) {
        List<CuaHang> lstCuaHang = this.chRepo.findAll();
        model.addAttribute("lstCuaHang", lstCuaHang);
        return "admin/cua_hang/index";
    }

    @GetMapping("delete/{id}")
    public String delete(
            @PathVariable("id") CuaHang cuaHang
    ) {
        this.chRepo.delete(cuaHang);
        return "redirect:/admin/cua-hang/index";
    }

    @GetMapping("create")
    public String create(Model model
    ) {
        vm = new CuaHangVM();
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/cua-hang/store");
        return "admin/cua_hang/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data") CuaHangVM cuaHangVM,
            BindingResult result,
            Model model
    ) {
        if (result.hasErrors()) {
            model.addAttribute("action", "/admin/cua-hang/store");
            return "admin/cua_hang/create";
        } else {
            CuaHang cuaHang = new CuaHang();
            cuaHang.loadCuaHangVM(cuaHangVM);
            this.chRepo.save(cuaHang);
            return "redirect:/admin/cua-hang/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id") CuaHang ch,
            Model model
    ) {
        vm.loadFromDomainModel(ch);
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/cua-hang/update/" + ch.getId());
        return "admin/cua_hang/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id") CuaHang ch,
            @Valid @ModelAttribute("data") CuaHangVM chVM,
            BindingResult result,
            Model model

    ) {
        if (result.hasErrors()) {
            model.addAttribute("data", chVM);
            model.addAttribute("action", "/admin/cua-hang/update/" + ch.getId());
            return "admin/cua_hang/create";
        } else {
            ch.loadCuaHangVM(chVM);
            this.chRepo.save(ch);
            return "redirect:/admin/cua-hang/index";
        }
    }

}
