package com.example.sd18888.repositories;

import com.example.sd18888.entities.GioHang;
import com.example.sd18888.entities.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface GioHangReopsitory extends JpaRepository<GioHang, UUID> {

    public List<GioHang> findByKhachHang(KhachHang khachHang);

    public GioHang findByMa(String ma);
}
