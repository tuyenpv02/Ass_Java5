package com.example.sd18888.repositories;

import com.example.sd18888.entities.GHCT;
import com.example.sd18888.entities.GioHang;
import com.example.sd18888.entities.GioHangChiTietID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GioHangChiTietRepository extends JpaRepository<GHCT, GioHangChiTietID> {


}
