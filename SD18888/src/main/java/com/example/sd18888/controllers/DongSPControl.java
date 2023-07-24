package com.example.sd18888.controllers;

import com.example.sd18888.entities.DongSP;
import com.example.sd18888.repositories.DongSPRepository;
import com.example.sd18888.request.DongSPVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/dong-san-pham")
public class DongSPControl {
    @Autowired
    private DongSPRepository dongSPRepository;

    @Autowired
    private DongSPVM vm;

    @GetMapping("index")
    public String index(Model model){
        List<DongSP> lstDongSP = this.dongSPRepository.findAll();
        model.addAttribute("lstDongSP",lstDongSP);
        return "admin/dong_sp/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ){
        this.dongSPRepository.deleteById(id);
        return "redirect:/admin/dong-san-pham/index";
    }

    @GetMapping("create")
    public String create(Model model){
        vm = new DongSPVM();
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/dong-san-pham/store");
        return "admin/dong_sp/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data")DongSPVM spVM,
            BindingResult result,
            Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/dong-san-pham/store");
            return "admin/dong_sp/create";
        }else{
            DongSP cv = new DongSP();
            cv.loadDongSPViewModel(spVM);
            this.dongSPRepository.save(cv);
            return "redirect:/admin/dong-san-pham/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id")DongSP sp,
            Model model
    ){
        vm.loadDongSPDomainModel(sp);
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/dong-san-pham/update/"+sp.getId());
        return "admin/dong_sp/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id")DongSP sp,
            @Valid @ModelAttribute("data") DongSPVM spVM,
            BindingResult result, // BindingResult phải để sau @Valid
            Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/dong-san-pham/update/"+sp.getId());
            return "admin/dong_sp/create";
        }else{
            System.out.println("vao day");
            sp.loadDongSPViewModel(spVM);
            this.dongSPRepository.save(sp);
            return "redirect:/admin/dong-san-pham/index";
        }
    }
}
