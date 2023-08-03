package com.example.sd18888.controllers;

import com.example.sd18888.entities.ChucVu;
import com.example.sd18888.entities.CuaHang;
import com.example.sd18888.entities.NhanVien;
import com.example.sd18888.repositories.ChucVuRepository;
import com.example.sd18888.repositories.CuaHangReopository;
import com.example.sd18888.repositories.NhanVienRepository;
import com.example.sd18888.request.NhanVienVM;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("admin/nhan-vien")
public class NhanVienControl {

    @Autowired
    private NhanVienRepository nvRepo;

    @Autowired
    private CuaHangReopository chRepo;

    @Autowired
    private ChucVuRepository cvRepo;

    @Autowired
    private NhanVienVM vm;

    @GetMapping("index")
    public String index (Model model){
        List<NhanVien> lstNhanVien = this.nvRepo.findAll();
        model.addAttribute("lstNhanVien",lstNhanVien);
        return "admin/nhan_vien/index";
    }

    @GetMapping("delete")
    public String delete(
            @RequestParam("id") UUID id
    ){
//        Optional<NhanVien> nv = this.nvRepo.findById(id);
//        System.out.println("delete "+nv.get().toString());
        this.nvRepo.deleteById(id);
        return "redirect:/admin/nhan-vien/index";
    }

    @GetMapping("create")
    public String create(Model model){
        List<ChucVu> lstChucVu = this.cvRepo.findAll();
        List<CuaHang> lstCuaHang = this.chRepo.findAll();

        model.addAttribute("lstCuaHang",lstCuaHang);
        model.addAttribute("lstChucVu",lstChucVu);

        vm = new NhanVienVM();
        model.addAttribute("data",vm);

        model.addAttribute("action","/admin/nhan-vien/store");
        return "admin/nhan_vien/create";
    }

    @PostMapping("store")
    public String store(
            @Valid @ModelAttribute("data")NhanVienVM nhanVienVM,
            BindingResult result,
            Model model
    ){
        if(result.hasErrors()){
            List<ChucVu> lstChucVu = this.cvRepo.findAll();
            List<CuaHang> lstCuaHang = this.chRepo.findAll();

            model.addAttribute("lstCuaHang",lstCuaHang);
            model.addAttribute("lstChucVu",lstChucVu);

            model.addAttribute("data",nhanVienVM);
            model.addAttribute("action","/admin/nhan-vien/store");
            return "admin/nhan_vien/create";
        }else{
            NhanVien nv = new NhanVien();
            nv.loadFormViewModel(nhanVienVM);
//            System.out.println("----------"+nhanVienVM.toString());
//            System.out.println("----------"+nv.toString());

            this.nvRepo.save(nv);
            return "redirect:/admin/nhan-vien/index";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(
            @PathVariable("id")NhanVien nhanVien,
            Model model
    ){
        List<ChucVu> lstChucVu = this.cvRepo.findAll();
        List<CuaHang> lstCuaHang = this.chRepo.findAll();

        model.addAttribute("lstCuaHang",lstCuaHang);
        model.addAttribute("lstChucVu",lstChucVu);

//        vm = new NhanVienVM();
        model.addAttribute("data",nhanVien);

        model.addAttribute("action","/admin/nhan-vien/update/"+nhanVien.getId());
        return "admin/nhan_vien/create";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable("id")NhanVien nhanVien,
            @Valid @ModelAttribute("data")NhanVienVM nhanVienVM,
            BindingResult result,
            Model model
    ){
        if(result.hasErrors()){
            List<ChucVu> lstChucVu = this.cvRepo.findAll();
            List<CuaHang> lstCuaHang = this.chRepo.findAll();

            model.addAttribute("lstCuaHang",lstCuaHang);
            model.addAttribute("lstChucVu",lstChucVu);

            System.out.println("lỗi ");

            model.addAttribute("action","/admin/nhan-vien/update/"+nhanVien.getId());
            return "admin/nhan_vien/create";
        }else{
            System.out.println("ttt lỗi ");
            nhanVien.loadFormViewModel(nhanVienVM);
            this.nvRepo.save(nhanVien);
            return "redirect:/admin/nhan-vien/index";
        }
    }
}