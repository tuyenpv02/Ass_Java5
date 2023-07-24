package com.example.sd18888.controllers;

import com.example.sd18888.entities.*;
import com.example.sd18888.repositories.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/hoa-don-chi-tiet")
public class HoaDonChiTietControl {
    @Autowired
    private ChiTietSPRepository chiTietSPRepository;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private GioHangReopsitory gioHangReopsitory;

    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpSession session;

    @GetMapping("/delete-cart/{id1}")
    public String deleteCart(
            @PathVariable("id1") ChiTietSP chiTietSP,
            Model model
            ){
        session = request.getSession();
        KhachHang khachHang =(KhachHang) session.getAttribute("kh");
        NhanVien nhanVien =(NhanVien) session.getAttribute("acc");
        String ma = (String) session.getAttribute("maHoaDon");

        if(khachHang !=null){
            GioHang gioHang = gioHangReopsitory.findByMa(ma);

            GioHangChiTietID gioHangChiTietID = new GioHangChiTietID(gioHang,chiTietSP);

            GHCT ghct = this.gioHangChiTietRepository.getReferenceById(gioHangChiTietID);

            this.gioHangChiTietRepository.delete(ghct);
        }
        if(nhanVien != null) {
            HoaDon hoaDon = hoaDonRepository.findHoaDonByMa(ma);
            if (hoaDon.getTinhTrang() == 1 || hoaDon.getTinhTrang() == 2) {
                session.setAttribute("valid", "hóa đơn đã xử lý");
                return "redirect:/gio-hang";
            }
            HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID(hoaDon, chiTietSP);
            HDCT hdct = this.hoaDonChiTietRepository.getReferenceById(hoaDonChiTietID);
            this.hoaDonChiTietRepository.delete(hdct);
        }

        return "redirect:/gio-hang";
    }

    @GetMapping("/update-cart/themSoLuong/{id1}&&{id2}")
    public String themSoLuong(
            @PathVariable("id1") ChiTietSP chiTietSP,
            @PathVariable("id2") HoaDon hoaDon
    ){
        if(hoaDon.getTinhTrang()==1 || hoaDon.getTinhTrang()==2){
            session.setAttribute("valid","hóa đơn đã xử lý");
            return "redirect:/gio-hang";
        }
        HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID(hoaDon,chiTietSP);
        HDCT hdct = this.hoaDonChiTietRepository.getReferenceById(hoaDonChiTietID);
            hdct.setSoLuong(hdct.getSoLuong()+1);
        this.hoaDonChiTietRepository.save(hdct);
        return "redirect:/gio-hang";
    }

    @GetMapping("/update-cart/truSoLuong/{id1}&&{id2}")
    public String truSoLuong(
            @PathVariable("id1") ChiTietSP chiTietSP,
            @PathVariable("id2") HoaDon hoaDon
    ){
        if(hoaDon.getTinhTrang()==1 || hoaDon.getTinhTrang()==2){
            session.setAttribute("valid","hóa đơn đã xử lý");
            return "redirect:/gio-hang";
        }
        HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID(hoaDon,chiTietSP);
        HDCT hdct = this.hoaDonChiTietRepository.getReferenceById(hoaDonChiTietID);
            hdct.setSoLuong(hdct.getSoLuong()-1);
            if(hdct.getSoLuong()==0){
                this.hoaDonChiTietRepository.delete(hdct);
                return "redirect:/gio-hang";
            }
        this.hoaDonChiTietRepository.save(hdct);
        return "redirect:/gio-hang";
    }

}
