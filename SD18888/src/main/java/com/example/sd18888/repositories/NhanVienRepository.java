package com.example.sd18888.repositories;

import com.example.sd18888.entities.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface NhanVienRepository extends JpaRepository<NhanVien, UUID> {

    public NhanVien findByMaAndMatKhau(String ma,String matKhau);
}
