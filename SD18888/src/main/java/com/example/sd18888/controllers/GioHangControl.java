package com.example.sd18888.controllers;

import com.example.sd18888.entities.*;
import com.example.sd18888.repositories.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("gio-hang")
public class GioHangControl {

    @Autowired
    private ChiTietSPRepository chiTietSPRepository;

    @Autowired
    private HoaDonRepository hoaDonRepository;
    @Autowired
    private GioHangReopsitory gioHangReopsitory;
    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;
    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpSession session;

    private List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();

    @GetMapping("")
    public String hienThiGioHang(Model model) {
        // load gio hang(hdct) theo ma vs ds hoa don
        session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");

        NhanVien nhanVien = (NhanVien) session.getAttribute("acc");
        KhachHang khachHang = (KhachHang) session.getAttribute("kh");
        if (nhanVien == null && khachHang == null) {
            session.setAttribute("login", "chưa đăng nhập");
            return "redirect:/admin";
        }
        if (khachHang != null) {
            return "redirect:/khach-hang-home/gio-hang";
//            session.setAttribute("login","kh đăng nhập");
//            List<HoaDonChiTiet> lstHDCT = new ArrayList<>();
//            if (ma.trim().length() <= 0 || ma == null) {
//
//            } else {
//                HoaDon hoaDon = hoaDonRepository.findHoaDonByMa(ma);
//                lstHDCT = hoaDon.getHoaDonChiTiets();
//
//                DecimalFormat decimalFormat = new DecimalFormat("##.##");
//                Double tongTienHang = 0.00;
//                for (HoaDonChiTiet h: lstHDCT){
//                    tongTienHang +=h.getDonGia()*h.getSoLuong();
//                }
//                model.addAttribute("tongTien",tongTienHang);
//            }
//
//            model.addAttribute("listHDCT", lstHDCT);
//
//            model.addAttribute("maHoaDon", ma);

        }

        if (nhanVien != null) {
            List<HoaDonChiTiet> lstHDCT = new ArrayList<>();
            if (ma.trim().length() <= 0 || ma == null) {

            } else {
                HoaDon hoaDon = hoaDonRepository.findHoaDonByMa(ma);
                lstHDCT = hoaDon.getHoaDonChiTiets();

                DecimalFormat decimalFormat = new DecimalFormat("##.##");
                Double tongTienHang = 0.00;
                for (HoaDonChiTiet h : lstHDCT) {
                    tongTienHang += h.getDonGia() * h.getSoLuong();
                }
                model.addAttribute("tongTien", tongTienHang);
            }

            // lay hd theo ma-> lay ds hdct theo ma hd -> load
//            Integer check= (Integer) session.getAttribute("checkGioHang");
//            if(check == 0 || check ==null){
//                lstHDCT = new ArrayList<>();
//            }
            model.addAttribute("listHDCT", lstHDCT);
            model.addAttribute("maHoaDon", ma);

            int tt = 3;
            Integer trangThai = (Integer) session.getAttribute("tinhTrangHD");
            List<HoaDon> lstHoaDon = hoaDonRepository.findAll();

            if (trangThai == null) {

            } else {
                if (trangThai == 1) {
                    lstHoaDon = hoaDonRepository.findByTinhTrang(1);
                } else if (trangThai == 0) {
                    lstHoaDon = hoaDonRepository.findByTinhTrang(0);
                } else if (trangThai == 2) {
                    lstHoaDon = hoaDonRepository.findByTinhTrang(2);
                }
            }

//        Sort sortByMa = Sort.by(Sort.Direction.DESC,"ma");
            model.addAttribute("lstHoaDon", lstHoaDon);
        }

        return "gio-hang";
    }

    public int getMaxHD() {
        String maHD = "";
        ArrayList<Integer> lstMax = new ArrayList<>();
        for (HoaDon d : this.hoaDonRepository.findAll()) {
            maHD = d.getMa().substring(2); // tra ve String con bat dau tu 2 ~'d'
            lstMax.add(Integer.parseInt(maHD));
        }
        // sort
        Collections.sort(lstMax, (o1, o2) -> o2.compareTo(o1));
        return lstMax.get(0) + 1;
    }

    public HoaDon taoHoaDonMoi() {
        HoaDon hoaDon = new HoaDon();
        hoaDon.setMa("HD" + getMaxHD());
        hoaDon.setTinhTrang(0);
        long millis = System.currentTimeMillis();
        java.sql.Date d = new java.sql.Date(millis);
        return hoaDon;
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

    @GetMapping("add/{id}")
    public String themGioHang(
            @PathVariable("id") ChiTietSP chiTietSP,
            Model model
    ) {
        session = request.getSession();
        String ma = (String) session.getAttribute("maHoaDon");
        NhanVien nhanVien = (NhanVien) session.getAttribute("acc");
        KhachHang khachHang = (KhachHang) session.getAttribute("kh");
        if (nhanVien == null && khachHang == null) {
            session.setAttribute("login", "chưa đăng nhập");
            return "redirect:/admin";
        }


        if (ma.trim().length() <= 0) {
// ko co ma
            if (khachHang != null) {
                List<GioHang> lstGioHang = this.gioHangReopsitory.findByKhachHang(khachHang);
                GioHang gioHang1 = new GioHang();

                if (lstGioHang.size() <= 0) {
                    GioHang gioHang = toaGioHangMoi(khachHang);
                    gioHang.setKhachHang(khachHang);
                    gioHang1 = this.gioHangReopsitory.save(gioHang);
                } else {
                    gioHang1 = lstGioHang.get(0);
                }

//
                GioHangChiTietID gioHangChiTietID = new GioHangChiTietID(gioHang1, chiTietSP);
                GHCT ghct = new GHCT();
                ghct.setId(gioHangChiTietID);
                ghct.setDonGia(chiTietSP.getGiaBan());
                ghct.setSoLuong(1);

                GHCT ghct1 = this.gioHangChiTietRepository.save(ghct);
                this.session.setAttribute("maHoaDon", gioHang1.getMa());
                session.setAttribute("checkGioHang", 1);

            }
            if (nhanVien != null) {
                HoaDon hoaDon = taoHoaDonMoi();
                hoaDon.setNhanVien(nhanVien);
                HoaDon x = this.hoaDonRepository.save(hoaDon);

                HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID(x, chiTietSP);
                HDCT hdct = new HDCT();
                hdct.setId(hoaDonChiTietID);
                hdct.setDonGia(chiTietSP.getGiaBan());
                hdct.setSoLuong(1);

                HDCT hdct2 = this.hoaDonChiTietRepository.save(hdct);
                this.session.setAttribute("maHoaDon", x.getMa());

            }
            session.setAttribute("checkGioHang", 1);

        } else {
            // co ma hoa don

            // find hdct theo ma
            // lay ra ds hdct theo hd vs ctsp
            // neu co thi tang sl +1 / ko co thi tao moi hdct
            if (khachHang != null) {
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
            }
            if (nhanVien != null) {
                HoaDon hoaDon = hoaDonRepository.findHoaDonByMa(ma);
                if (hoaDon.getTinhTrang() == 1 || hoaDon.getTinhTrang() == 2) {
                    session.setAttribute("valid", "hóa đơn đã xử lý");
                    return "redirect:/gio-hang";
                }
                List<HoaDonChiTiet> hoaDonChiTiets = hoaDon.getHoaDonChiTiets();

                HoaDonChiTietID hoaDonChiTietID = new HoaDonChiTietID(hoaDon, chiTietSP);
                HDCT hdct = new HDCT();
                hdct.setId(hoaDonChiTietID);
                hdct.setDonGia(chiTietSP.getGiaBan());
                hdct.setSoLuong(1);

//            Boolean checkNull = true;
                // ktra hdct co ton tai ko
                for (HoaDonChiTiet h : hoaDonChiTiets) {
                    if (h.getHoaDon().getId().equals(hoaDon.getId())
                            && h.getChiTietSP().getId().equals(chiTietSP.getId())) {
//                    checkNull =false;
                        hdct.setSoLuong(h.getSoLuong() + 1);
                        break;
                    }
                }
                this.hoaDonChiTietRepository.save(hdct);
            }

            session.setAttribute("checkGioHang", 1);
        }
        if (khachHang != null) {
            return "redirect:/khach-hang-home";
        }
        return "redirect:/admin";
    }

    @GetMapping("chonHD/{id}")
    public String chonHoaDon(
            @PathVariable("id") HoaDon hoaDon
    ) {
        //
        // load ra gio hang + setMa hd( setSession maHD) the o hd
        session.setAttribute("maHoaDon", hoaDon.getMa());
        session.removeAttribute("valid");
        return "redirect:/gio-hang";
    }

    @GetMapping("loc")
    public String locHoaDon(
            @RequestParam("trangThai") Integer trangThai
    ) {
        NhanVien nhanVien = (NhanVien) session.getAttribute("acc");
        KhachHang khachHang = (KhachHang) session.getAttribute("kh");
//        if(nhanVien == null){
//            session.setAttribute("login","chưa đăng nhập");
//            return "redirect:/admin";
//        }
        // 1-all  2-dang 3-da 4-huy
        session.setAttribute("tinhTrangHD", trangThai);
//        List<HoaDon> lstHoaDon = this.hoaDonRepository.findByTinhTrang(trangThai);
        session.setAttribute("checkGioHang", 1);
        return "redirect:/gio-hang";
    }
}
