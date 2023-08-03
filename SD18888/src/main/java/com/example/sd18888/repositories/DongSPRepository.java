package com.example.sd18888.repositories;

import com.example.sd18888.entities.DongSP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface DongSPRepository extends JpaRepository<DongSP, UUID> {
}
