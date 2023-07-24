package com.example.sd18888.repositories;

import com.example.sd18888.entities.CuaHang;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface CuaHangReopository extends JpaRepository<CuaHang, UUID> {
}
