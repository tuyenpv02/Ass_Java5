package com.example.sd18888.repositories;

import com.example.sd18888.entities.GHCT;
import com.example.sd18888.entities.GioHang;
import com.example.sd18888.entities.GioHangChiTietID;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GioHangChiTietRepository extends JpaRepository<GHCT, GioHangChiTietID> {


}
