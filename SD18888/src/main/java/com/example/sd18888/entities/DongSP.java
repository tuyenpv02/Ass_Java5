package com.example.sd18888.entities;

import com.example.sd18888.request.DongSPVM;
import com.example.sd18888.request.SanPhamVM;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "DongSP")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DongSP {

    @Id
    @Column(name = "Id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    public void loadDongSPViewModel(DongSPVM dongSPVM) {
        this.setMa(dongSPVM.getMa());
        this.setTen(dongSPVM.getTen());
    }

}

