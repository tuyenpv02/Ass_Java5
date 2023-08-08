package com.example.sd18888.request;

import com.example.sd18888.entities.CuaHang;
import com.example.sd18888.entities.SanPham;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SanPhamVM {

    private String ma;

    private String ten;

    public void loadSanPhamDomainModel(SanPham sanPham) {
        this.setMa(sanPham.getMa());
        this.setTen(sanPham.getTen());
    }
}
