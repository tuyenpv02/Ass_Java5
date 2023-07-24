package com.example.sd18888.repositories;

import com.example.sd18888.entities.NSX;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface NSXRepository extends JpaRepository<NSX, UUID> {
}
