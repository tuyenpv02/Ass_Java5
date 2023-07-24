package com.example.sd18888.controllers;

import com.example.sd18888.entities.SanPham;
import com.example.sd18888.repositories.SanPhamRepository;
import com.example.sd18888.request.SanPhamVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/san-pham")
public class SanPhamControl {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private SanPhamVM vm;

    @GetMapping("index")
    public String index(Model model){
        List<SanPham> lstSanPham = this.sanPhamRepository.findAll();
        model.addAttribute("lstSanPham",lstSanPham);
        return "admin/san_pham/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ){
        this.sanPhamRepository.deleteById(id);
        return "redirect:/admin/san-pham/index";
    }

    @GetMapping("create")
    public String create(Model model){
        vm = new SanPhamVM();
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/san-pham/store");
        return "admin/san_pham/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data")SanPhamVM spVM,
            BindingResult result,
            Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/san-pham/store");
            return "admin/san_pham/create";
        }else{
            SanPham cv = new SanPham();
            cv.loadSanPhamViewModel(spVM);
            this.sanPhamRepository.save(cv);
            return "redirect:/admin/san-pham/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id")SanPham sp,
            Model model
    ){
        vm.loadSanPhamDomainModel(sp);
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/san-pham/update/"+sp.getId());
        return "admin/san_pham/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id")SanPham sp,
            @Valid @ModelAttribute("data") SanPhamVM spVM,
            BindingResult result, // BindingResult phải để sau @Valid
            Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/san-pham/update/"+sp.getId());
            return "admin/san_pham/create";
        }else{
            System.out.println("vao day");
            sp.loadSanPhamViewModel(spVM);
            this.sanPhamRepository.save(sp);
            return "redirect:/admin/san-pham/index";
        }
    }

}
