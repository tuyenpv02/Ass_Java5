package com.example.sd18888.repositories;

import com.example.sd18888.entities.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface KhachHangRepository extends JpaRepository<KhachHang, UUID> {

    public KhachHang findByMaAndMatKhau(String ma, String matKhau);
}
