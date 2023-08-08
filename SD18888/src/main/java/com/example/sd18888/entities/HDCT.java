package com.example.sd18888.entities;


import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "HoaDonChiTiet")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class HDCT {

    @EmbeddedId
    private HoaDonChiTietID id;

    @Column(name = "SoLuong")
    private Integer soLuong;

    @Column(name = "DonGia")
    private Double donGia;
}