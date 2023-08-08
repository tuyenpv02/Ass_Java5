package com.example.sd18888.request;

import com.example.sd18888.entities.MauSac;
import com.example.sd18888.entities.SanPham;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MauSacVM {

    @NotBlank
    private String ma;

    @NotBlank
    private String ten;

    public void loadMauSacDomainModel(MauSac mauSac) {
        this.setMa(mauSac.getMa());
        this.setTen(mauSac.getTen());
    }
}
