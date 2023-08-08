package com.example.sd18888.controllers;


import com.example.sd18888.entities.ChiTietSP;
import com.example.sd18888.entities.MauSac;
import com.example.sd18888.repositories.*;
import com.example.sd18888.request.ChiTietSPVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/quan-ly-san-pham")
public class QuanLySanPham {

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

    @GetMapping("")
    public String quanLySanPham(
            Model model,
            @RequestParam(value = "page", defaultValue = "0") Integer pageNo
    ) {

        model.addAttribute("lstSanPham", this.spRepo.findAll());
        model.addAttribute("lstNSX", this.nsxRepo.findAll());
        model.addAttribute("lstMauSac", this.msRepo.findAll());
        model.addAttribute("lstDongSP", this.dspRepo.findAll());

        Sort sort = (Sort.by(Sort.Direction.ASC, "giaBan"));
        Pageable pageable = PageRequest.of(pageNo, 3, sort);
        Page<ChiTietSP> chiTietSPPagepage = this.chiTietSPRepo.findAll(pageable);
//        List<ChiTietSP> ds = page.getContent();
//        model.addAttribute("totalPage",page.getTotalPages());
        model.addAttribute("listProduct", chiTietSPPagepage);
        return "ql_san_pham";
    }

    @GetMapping("delete/{id}")
    public String delete(
            @PathVariable("id") UUID id
    ) {
        this.chiTietSPRepo.deleteById(id);
        return "redirect:/admin/quan-ly-san-pham";
    }

    @PostMapping("add")
    public String store(
            ChiTietSPVM chiTietSPVM
    ) {
        ChiTietSP chiTietSP = new ChiTietSP();
        chiTietSP.loadChiTietSPViewModel(chiTietSPVM);
        this.chiTietSPRepo.save(chiTietSP);
        return "redirect:/admin/quan-ly-san-pham";
    }


}
