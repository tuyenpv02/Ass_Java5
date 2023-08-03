package com.example.sd18888.controllers;

import com.example.sd18888.entities.*;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("khach-hang-home")
public class KhachHangHome {
    @Autowired
    private ChiTietSPRepository chiTietSPRepository;


    @Autowired
    private GioHangReopsitory gioHangReopsitory;

    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;
    @Autowired
    private DongSPRepository dspRepo;

    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpSession session;

    @GetMapping("gio-hang")
    public String khachHangGH(Model model) {
        session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");

        KhachHang khachHang = (KhachHang) session.getAttribute("kh");
        if (khachHang == null) {
            session.setAttribute("login", "chưa đăng nhập");
            return "redirect:/khach-hang-home";
        }

        session.setAttribute("login", "kh đăng nhập");
        List<GioHangChiTiet> gioHangChiTiets = new ArrayList<>();
        List<GioHang> gioHangList = this.gioHangReopsitory.findByKhachHang(khachHang);
        if (ma == null || ma.trim().length() <= 0) {
            if (gioHangList.size() <= 0) {

            } else {
                gioHangChiTiets = gioHangList.get(0).getGioHangChiTiets();
            }

        } else {
            GioHang gioHang = gioHangReopsitory.findByMa(ma);

            gioHangChiTiets = gioHang.getGioHangChiTiets();
            DecimalFormat decimalFormat = new DecimalFormat("##.##");
            Double tongTienHang = 0.00;
            for (GioHangChiTiet h : gioHangChiTiets) {
                tongTienHang += h.getDonGia() * h.getSoLuong();
            }
            model.addAttribute("tongTien", tongTienHang);
        }
        model.addAttribute("listHDCT", gioHangChiTiets);
        model.addAttribute("maHoaDon", ma);
        return "gio-hang";
    }

    @GetMapping("")
    public String hienThiHomeKH(Model model
            , @RequestParam(value = "page", defaultValue = "0") Integer pageNo) {
        session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");
        if (ma == null) {
            session.setAttribute("maHoaDon", "");
        }
        Pageable pageable = PageRequest.of(pageNo, 6);
        Page<ChiTietSP> ds = this.chiTietSPRepository.findAll(pageable);

        model.addAttribute("lstDongSP", this.dspRepo.findAll());
        model.addAttribute("lstChiTietSP", ds);
        return "home";
    }

    public GioHang toaGioHangMoi(KhachHang khachHang) {
        GioHang gioHang = new GioHang();
        gioHang.setMa("GH0" + khachHang.getMa());
        gioHang.setTinhTrang(0);
        long millis = System.currentTimeMillis();
        java.sql.Date d = new java.sql.Date(millis);
        gioHang.setNgayTao(d);
        return gioHang;
    }

    @GetMapping("add-gio-hang/{id}")
    public String addGioHang(
            @PathVariable("id") ChiTietSP chiTietSP,
            Model model
    ) {
        session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");
        KhachHang khachHang = (KhachHang) session.getAttribute("kh");
        if (khachHang == null) {
            session.setAttribute("login", "chưa đăng nhập");
            return "redirect:/khach-hang-home";
        }

        if (ma.trim().length() <= 0 || ma == null) {
            // chua co ma hoa don
            // toa moi hd trong db-> lay hd tu ma -> tao hdct tu hd vs ctsp

            List<GioHang> gioHangList = this.gioHangReopsitory.findByKhachHang(khachHang);
            GioHang gioHang1 = new GioHang();
            if (gioHangList.size() <= 0) {
                GioHang gioHang = toaGioHangMoi(khachHang);
                gioHang.setKhachHang(khachHang);
                gioHang1 = this.gioHangReopsitory.save(gioHang);
            } else {
                gioHang1 = gioHangList.get(0);
            }

            GioHangChiTietID gioHangChiTietID = new GioHangChiTietID(gioHang1, chiTietSP);
            GHCT ghct = new GHCT();
            ghct.setId(gioHangChiTietID);
            ghct.setDonGia(chiTietSP.getGiaBan());
            ghct.setSoLuong(1);

            GHCT ghct1 = this.gioHangChiTietRepository.save(ghct);
            this.session.setAttribute("maHoaDon", gioHang1.getMa());
            session.setAttribute("checkGioHang", 1);

        } else {
            // co ma hoa don

            // find hdct theo ma
            // lay ra ds hdct theo hd vs ctsp
            // neu co thi tang sl +1 / ko co thi tao moi hdct
            GioHang gioHang = gioHangReopsitory.findByMa(ma);
            if (gioHang.getTinhTrang() == 1 || gioHang.getTinhTrang() == 2) {
                session.setAttribute("valid", "chờ");
                return "redirect:/gio-hang";
            }
            List<GioHangChiTiet> gioHangChiTiets = gioHang.getGioHangChiTiets();

            GioHangChiTietID gioHangChiTietID = new GioHangChiTietID(gioHang, chiTietSP);
            GHCT ghct = new GHCT();
            ghct.setId(gioHangChiTietID);
            ghct.setDonGia(chiTietSP.getGiaBan());
            ghct.setSoLuong(1);
            for (GioHangChiTiet h : gioHangChiTiets) {
                if (h.getGioHang().getId().equals(gioHang.getId())
                        && h.getChiTietSP().getId().equals(chiTietSP.getId())) {
                    ghct.setSoLuong(h.getSoLuong() + 1);
                    break;
                }
            }
            this.gioHangChiTietRepository.save(ghct);
            session.setAttribute("checkGioHang", 1);
        }
        return "redirect:/khach-hang-home";
    }
}




