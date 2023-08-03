package com.example.sd18888.controllers;

import com.example.sd18888.entities.MauSac;
import com.example.sd18888.repositories.MauSacRepository;
import com.example.sd18888.request.MauSacVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("admin/mau-sac")
public class MauSacControl {

    @Autowired
    private MauSacRepository mauSacRepository;

    @Autowired
    private MauSacVM vm;

    @GetMapping("index")
    public String index(Model model) {
        List<MauSac> lstMauSac = this.mauSacRepository.findAll();
        model.addAttribute("lstMauSac", lstMauSac);
        return "admin/mau_sac/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ) {
        this.mauSacRepository.deleteById(id);
        return "redirect:/admin/mau-sac/index";
    }

    @GetMapping("create")
    public String create(Model model) {
        vm = new MauSacVM();
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/mau-sac/store");
        return "admin/mau_sac/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data") MauSacVM spVM,
            BindingResult result,
            Model model
    ) {
        if (result.hasErrors()) {
            model.addAttribute("action", "/admin/mau-sac/store");
            return "admin/mau_sac/create";
        } else {
            MauSac cv = new MauSac();
            cv.loadMauSacViewModel(spVM);
            this.mauSacRepository.save(cv);
            return "redirect:/admin/mau-sac/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id") MauSac sp,
            Model model
    ) {
        vm.loadMauSacDomainModel(sp);
        model.addAttribute("data", vm);
        model.addAttribute("action", "/admin/mau-sac/update/" + sp.getId());
        return "admin/mau_sac/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id") MauSac ms,
            @Valid @ModelAttribute("data") MauSacVM spVM,
            BindingResult result, // BindingResult phải để sau @Valid
            Model model
    ) {
        if (result.hasErrors()) {
            model.addAttribute("action", "/admin/mau-sac/update/" + ms.getId());
            return "admin/mau_sac/create";
        } else {
            ms.loadMauSacViewModel(spVM);
            this.mauSacRepository.save(ms);
            return "redirect:/admin/mau-sac/index";
        }
    }
}
