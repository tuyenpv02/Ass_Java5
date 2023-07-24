package com.example.sd18888.controllers;

import com.example.sd18888.entities.*;
import com.example.sd18888.repositories.GioHangChiTietRepository;
import com.example.sd18888.repositories.GioHangReopsitory;
import com.example.sd18888.repositories.HoaDonChiTietRepository;
import com.example.sd18888.repositories.HoaDonRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("admin/hoa-don")
public class HoaDonControl {
    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    HttpServletRequest request;
    @Autowired
    private GioHangReopsitory gioHangReopsitory;

    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;
    @Autowired
    HttpSession session;

    @GetMapping("index")
    public String index(Model model){
        List<HoaDon> ds = this.hoaDonRepository.findAll();

        model.addAttribute("lstHoaDon",ds);
        return "admin/HoaDon/index";
    }

    @GetMapping("chonHD/{id}")
    public String chonHoaDon(
            @PathVariable("id")HoaDon hoaDon
    ) {
        //
        // load ra gio hang + setMa hd( setSession maHD) the o hd

        session.setAttribute("maHoaDon", hoaDon.getMa());
        session.removeAttribute("valid");

        return "redirect:/gio-hang";
    }

    @GetMapping("thanh-toan-ma/{ma}")
    public String updateTrangThai(
            @PathVariable("ma")String ma
    ){
        NhanVien nhanVien =(NhanVien) session.getAttribute("acc");
        KhachHang khachHang =(KhachHang) session.getAttribute("kh");

        if(ma==null || ma.trim().equals("")){
            session.setAttribute("valid","mời chọn hóa đơn");
            return "redirect:/gio-hang";
        }

        if(khachHang != null){
            // từ khách hàng - > lấy ra ds giỏ hàng
            // tao hoa don + add idkh
            // lay lst hoa don de tao hd với mã tự sinh
            // từ mã hd -> lấy id hd
            // từ giỏ hàng chi tiết : for + add id chi tiết sp
            HoaDon hoaDonMoi1 = taoHoaDonMoi();
            hoaDonMoi1.setKhachHang(khachHang);

            HoaDon hoaDonMoi2  = this.hoaDonRepository.save(hoaDonMoi1);

            GioHang  gioHang = this.gioHangReopsitory.findByMa(ma);
            List<GioHangChiTiet> ds = gioHang.getGioHangChiTiets();

            HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID();
            hoaDonChiTietID.setHoaDon(hoaDonMoi2);

            GioHangChiTietID gioHangChiTietID = new GioHangChiTietID();
            gioHangChiTietID.setGioHang(gioHang);

            for(GioHangChiTiet g:ds){
                hoaDonChiTietID.setChiTietSP(g.getChiTietSP());
                gioHangChiTietID.setChiTietSP(g.getChiTietSP());

                HDCT hdct = new HDCT();
                hdct.setId(hoaDonChiTietID);
                hdct.setSoLuong(g.getSoLuong());
                hdct.setDonGia(g.getDonGia());

                HDCT hdct1 = this.hoaDonChiTietRepository.save(hdct);

                GHCT ghct = new GHCT();
                ghct.setId(gioHangChiTietID);

                this.gioHangChiTietRepository.delete(ghct);
            }

//            hoaDonMoi2.setTinhTrang(0);
            return "redirect:/khach-hang-home";
        }

        HoaDon hoaDon = this.hoaDonRepository.findHoaDonByMa(ma);
        if(khachHang ==null){
            hoaDon.setTinhTrang(1);
        }else{
            hoaDon.setTinhTrang(0);
        }
        hoaDon.setNhanVien(nhanVien);

        this.hoaDonRepository.save(hoaDon);
        session.removeAttribute("maHoaDon");
        session.removeAttribute("lstHDCT");
        return "redirect:/admin";
    }

    @GetMapping("huy-ma/{ma}")
    public String updateHuy(
            @PathVariable("ma")String ma
    ){
        NhanVien nhanVien =(NhanVien) session.getAttribute("acc");
        KhachHang khachHang =(KhachHang) session.getAttribute("kh");
//        if(nhanVien == null){
//            session.setAttribute("login","chưa đăng nhập");
//            return "redirect:/admin";
//        }
        if(ma==null || ma.trim().length()<=0){
            session.setAttribute("valid","mời chọn hóa đơn");
            return "redirect:/gio-hang";
        }
        HoaDon hoaDon = this.hoaDonRepository.findHoaDonByMa(ma);
        hoaDon.setTinhTrang(2);
        hoaDon.setNhanVien(nhanVien);

        this.hoaDonRepository.save(hoaDon);
        session.removeAttribute("lstHDCT");
        session.removeAttribute("maHoaDon");

        return "redirect:/admin";
    }

    public int getMaxHD() {
        String maHD = "";
        ArrayList<Integer> lstMax = new ArrayList<>();
        for (HoaDon d : this.hoaDonRepository.findAll()) {
            maHD = d.getMa().substring(2); // tra ve String con bat dau tu 2 ~'d'
            lstMax.add(Integer.parseInt(maHD));
//            System.out.println("num "+Integer.parseInt(maHD));
        }

        // sort
        Collections.sort(lstMax, (o1, o2) -> o2.compareTo(o1));
        return lstMax.get(0) + 1;
    }

    public HoaDon taoHoaDonMoi() {
        HoaDon hoaDon = new HoaDon();
        hoaDon.setMa("HD" + getMaxHD());
        hoaDon.setTinhTrang(0);
        long millis=System.currentTimeMillis();
        java.sql.Date d=new java.sql.Date(millis);
        hoaDon.setNgayTao(d);
        return hoaDon;
    }


    @GetMapping("add-ma-moi")
    public String updateTrangThai(
    ){
        NhanVien nhanVien =(NhanVien) session.getAttribute("acc");
        if(nhanVien == null){
            session.setAttribute("login","chưa đăng nhập");
            return "redirect:/admin";
        }
        HoaDon hoaDon = taoHoaDonMoi();
        hoaDon.setNhanVien(nhanVien);

        this.hoaDonRepository.save(hoaDon);
        return "redirect:/gio-hang";
    }



}
