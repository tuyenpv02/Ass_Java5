package com.example.sd18888.repositories;

import com.example.sd18888.entities.ChucVu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ChucVuRepository extends JpaRepository<ChucVu, UUID> {
}
