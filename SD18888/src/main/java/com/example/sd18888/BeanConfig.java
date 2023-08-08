package com.example.sd18888;

import com.example.sd18888.entities.MauSac;
import com.example.sd18888.entities.NSX;
import com.example.sd18888.request.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfig {

    @Bean
    public ChiTietSPVM geChiTietSPVM() {
        ChiTietSPVM chiTietSPVM = new ChiTietSPVM();
        return chiTietSPVM;
    }

    @Bean
    public MauSacVM getMauSacVM() {
        MauSacVM mauSac = new MauSacVM();
        return mauSac;
    }

    @Bean
    public NSXVM geNsxvm() {
        NSXVM nsx = new NSXVM();
        return nsx;
    }

    @Bean
    public DongSPVM dongSPVM() {
        DongSPVM dongSPVM = new DongSPVM();
        return dongSPVM;
    }

    @Bean
    public SanPhamVM getSanPhamVM() {
        SanPhamVM sanPhamVM = new SanPhamVM();
        return sanPhamVM;
    }

    @Bean
    public CuaHangVM getCuaHangVM() {
        CuaHangVM cuaHangVM = new CuaHangVM();
        return cuaHangVM;
    }

    @Bean
    public ChucVuVM getChucVuVM() {
        ChucVuVM chucVuVM = new ChucVuVM();
        return chucVuVM;
    }

    @Bean
    public NhanVienVM geNhanVienVM() {
        NhanVienVM nhanVienVM = new NhanVienVM();
        return nhanVienVM;
    }


}
