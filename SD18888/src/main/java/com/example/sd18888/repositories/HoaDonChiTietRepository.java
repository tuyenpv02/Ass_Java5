package com.example.sd18888.repositories;

import com.example.sd18888.entities.HDCT;
import com.example.sd18888.entities.HoaDonChiTiet;
import com.example.sd18888.entities.HoaDonChiTietID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HoaDonChiTietRepository extends JpaRepository<HDCT, HoaDonChiTietID> {


}
