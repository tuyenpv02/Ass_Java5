package com.example.sd18888.request;

import com.example.sd18888.entities.DongSP;
import com.example.sd18888.entities.SanPham;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DongSPVM {

    private String ma;

    private String ten;

    public void loadDongSPDomainModel(DongSP dongSP) {
        this.setMa(dongSP.getMa());
        this.setTen(dongSP.getTen());
    }
}
