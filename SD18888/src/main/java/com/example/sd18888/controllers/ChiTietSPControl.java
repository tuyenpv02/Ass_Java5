package com.example.sd18888.controllers;

import com.example.sd18888.entities.ChiTietSP;
import com.example.sd18888.entities.SanPham;
import com.example.sd18888.repositories.*;
import com.example.sd18888.request.ChiTietSPVM;
import jakarta.validation.Valid;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("admin/chi-tiet-sp")
public class ChiTietSPControl {

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
    private ChiTietSPVM vm;

    @GetMapping("index")
    public String index(Model model) {

        model.addAttribute("lstChiTietSP", this.chiTietSPRepo.findAll());
        return "admin/chi_tiet_sp/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ) {
        this.chiTietSPRepo.deleteById(id);
        return "redirect:/admin/chi-tiet-sp/index";
    }

    @GetMapping("create")
    public String create(Model model) {
        model.addAttribute("lstSanPham", this.spRepo.findAll());
        model.addAttribute("lstNSX", this.nsxRepo.findAll());
        model.addAttribute("lstMauSac", this.msRepo.findAll());
        model.addAttribute("lstDongSP", this.dspRepo.findAll());

        vm = new ChiTietSPVM();
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/chi-tiet-sp/store");
        return "admin/chi_tiet_sp/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data") ChiTietSPVM chiTietSPVM,
            BindingResult result,
            Model model
    ) {
        if(result.hasErrors()){
            model.addAttribute("lstSanPham", this.spRepo.findAll());
            model.addAttribute("lstNSX", this.nsxRepo.findAll());
            model.addAttribute("lstMauSac", this.msRepo.findAll());
            model.addAttribute("lstDongSP", this.dspRepo.findAll());

            model.addAttribute("data", chiTietSPVM);
            model.addAttribute("action", "/admin/chi-tiet-sp/store");
            return "admin/chi_tiet_sp/create";
        }else{
            ChiTietSP chiTietSP = new ChiTietSP();
            chiTietSP.loadChiTietSPViewModel(chiTietSPVM);
            this.chiTietSPRepo.save(chiTietSP);
            return "redirect:/admin/chi-tiet-sp/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
        @PathVariable("id")ChiTietSP chiTietSP,
        Model model
    ){
        model.addAttribute("lstSanPham", this.spRepo.findAll());
        model.addAttribute("lstNSX", this.nsxRepo.findAll());
        model.addAttribute("lstMauSac", this.msRepo.findAll());
        model.addAttribute("lstDongSP", this.dspRepo.findAll());

        vm.loadChiTietSPDomainModel(chiTietSP);
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/chi-tiet-sp/update/"+chiTietSP.getId());
        return "admin/chi_tiet_sp/create";
    }

    @PostMapping("update/{id}")
    public String update(
           @PathVariable("id")ChiTietSP chiTietSP,
           @Valid @ModelAttribute("data")ChiTietSPVM chiTietSPVM,
           BindingResult result,
           Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("lstSanPham", this.spRepo.findAll());
            model.addAttribute("lstNSX", this.nsxRepo.findAll());
            model.addAttribute("lstMauSac", this.msRepo.findAll());
            model.addAttribute("lstDongSP", this.dspRepo.findAll());

            model.addAttribute("data", chiTietSPVM);
            model.addAttribute("action", "/admin/chi-tiet-sp/update/"+chiTietSP.getId());
            return "admin/chi_tiet_sp/create";
        }else{

            chiTietSP.loadChiTietSPViewModel(chiTietSPVM);
            this.chiTietSPRepo.save(chiTietSP);
            return "redirect:/admin/chi-tiet-sp/index";
        }
    }
}
