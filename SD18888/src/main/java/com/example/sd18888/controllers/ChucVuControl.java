package com.example.sd18888.controllers;

import com.example.sd18888.entities.ChucVu;
import com.example.sd18888.entities.CuaHang;
import com.example.sd18888.repositories.ChucVuRepository;
import com.example.sd18888.request.ChucVuVM;
import com.example.sd18888.request.CuaHangVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/chuc-vu")
public class ChucVuControl {

    @Autowired
    private ChucVuRepository cvRepo;

    @Autowired
    private ChucVuVM vm;

    @GetMapping("index")
    public String index(Model model){
        List<ChucVu> lstChucVu = this.cvRepo.findAll();
        model.addAttribute("lstChucVu",lstChucVu);
        return "admin/chuc_vu/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id")UUID id
    ){
//        System.out.println("delete "+id);
//        List<ChucVu> d = this.cvRepo.findAllById(id);
//        System.out.println("delete "+this.cvRepo.findAllById(id));
        this.cvRepo.deleteById(id);
        return "redirect:/admin/chuc-vu/index";
    }
    @GetMapping("create")
    public String create(Model model){
        vm = new ChucVuVM();
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/chuc-vu/store");
        return "admin/chuc_vu/submit";
    }

    @PostMapping("store")
    public String store(
           @Valid @ModelAttribute("data")ChucVuVM cvVM,
           BindingResult result,
           Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/chuc-vu/store");
            return "admin/chuc_vu/submit";
        }else{
            ChucVu cv = new ChucVu();
            cv.loadChucVuVM(cvVM);
            this.cvRepo.save(cv);
            return "redirect:/admin/chuc-vu/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id")ChucVu cv,
            Model model
    ){
        vm.loadChucVuDomainModel(cv);
        model.addAttribute("data",vm);
        model.addAttribute("action","/admin/chuc-vu/update/"+cv.getId());
        return "admin/chuc_vu/submit";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id")ChucVu cv,
            @Valid @ModelAttribute("data") ChucVuVM cvVM,
            BindingResult result, // BindingResult phải để sau @Valid
            Model model
    ){
        if(result.hasErrors()){
            model.addAttribute("action","/admin/chuc-vu/update/"+cv.getId());
            return "admin/chuc_vu/submit";
        }else{
            System.out.println("vao day");
            cv.loadChucVuVM(cvVM);
            this.cvRepo.save(cv);
            return "redirect:/admin/chuc-vu/index";
        }
    }


}
