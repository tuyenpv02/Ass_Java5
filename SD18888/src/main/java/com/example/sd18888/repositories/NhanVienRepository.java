package com.example.sd18888.repositories;

import com.example.sd18888.entities.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface NhanVienRepository extends JpaRepository<NhanVien, UUID> {

    public NhanVien findByMaAndMatKhau(String ma,String matKhau);
}
